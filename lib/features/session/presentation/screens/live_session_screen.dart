import 'dart:async';

import 'package:agora_rtc_engine/agora_rtc_engine.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/router/route_paths.dart';
import '../../../../core/theme/app_radius.dart';
import '../../../../core/widgets/app_button.dart';
import '../../../auth/domain/auth_state.dart';
import '../../../auth/domain/user.dart';
import '../../../auth/presentation/providers/auth_provider.dart';
import '../../domain/session_detail.dart';
import '../providers/session_actions_provider.dart';
import '../providers/session_detail_provider.dart';
import '../widgets/chat_panel.dart';
import '../widgets/report_dialog.dart';

/// Live Agora video session. Realtime broadcast auth isn't available to
/// bearer-token clients yet (see plan notes), so session-status changes from
/// the other party are picked up by polling [sessionDetailProvider] on a
/// timer rather than a `session.{id}` channel subscription.
class LiveSessionScreen extends ConsumerStatefulWidget {
  const LiveSessionScreen({super.key, required this.sessionId});

  final int sessionId;

  @override
  ConsumerState<LiveSessionScreen> createState() => _LiveSessionScreenState();
}

class _LiveSessionScreenState extends ConsumerState<LiveSessionScreen> {
  RtcEngine? _engine;
  int? _remoteUid;
  String? _channelName;
  bool _isConnecting = true;
  bool _micMuted = false;
  bool _cameraOff = false;
  String? _setupError;
  Timer? _keepaliveTimer;
  Timer? _pollTimer;

  @override
  void initState() {
    super.initState();
    _setup();
  }

  @override
  void dispose() {
    _keepaliveTimer?.cancel();
    _pollTimer?.cancel();
    _engine?.leaveChannel();
    _engine?.release();
    super.dispose();
  }

  Future<void> _setup() async {
    final statuses = await [Permission.camera, Permission.microphone].request();
    final granted = statuses.values.every((status) => status.isGranted);
    if (!granted) {
      setState(() => _setupError = 'Camera and microphone permissions are required to join.');
      return;
    }

    try {
      final join = await ref.read(sessionActionsProvider.notifier).join(widget.sessionId);

      final engine = createAgoraRtcEngine();
      await engine.initialize(RtcEngineContext(appId: join.appId));
      engine.registerEventHandler(
        RtcEngineEventHandler(
          onJoinChannelSuccess: (connection, elapsed) {
            if (mounted) setState(() => _isConnecting = false);
          },
          onUserJoined: (connection, remoteUid, elapsed) {
            if (mounted) setState(() => _remoteUid = remoteUid);
          },
          onUserOffline: (connection, remoteUid, reason) {
            if (mounted && _remoteUid == remoteUid) setState(() => _remoteUid = null);
          },
          onTokenPrivilegeWillExpire: (connection, token) async {
            final refreshed =
                await ref.read(sessionActionsProvider.notifier).refreshToken(widget.sessionId);
            await engine.renewToken(refreshed.token);
          },
          onError: (err, msg) {
            if (mounted) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
            }
          },
        ),
      );
      await engine.enableVideo();
      await engine.startPreview();
      await engine.joinChannel(
        token: join.token,
        channelId: join.channelName,
        uid: join.uid,
        options: const ChannelMediaOptions(
          channelProfile: ChannelProfileType.channelProfileCommunication,
          clientRoleType: ClientRoleType.clientRoleBroadcaster,
        ),
      );

      _keepaliveTimer = Timer.periodic(const Duration(seconds: 30), (_) {
        ref.read(sessionActionsProvider.notifier).keepalive(widget.sessionId);
      });
      _pollTimer = Timer.periodic(const Duration(seconds: 10), (_) {
        ref.read(sessionDetailProvider(widget.sessionId).notifier).refresh();
      });

      setState(() {
        _engine = engine;
        _channelName = join.channelName;
      });
    } catch (error) {
      if (mounted) setState(() => _setupError = Failure.fromError(error).message);
    }
  }

  Future<void> _toggleMic() async {
    final next = !_micMuted;
    await _engine?.muteLocalAudioStream(next);
    setState(() => _micMuted = next);
  }

  Future<void> _toggleCamera() async {
    final next = !_cameraOff;
    await _engine?.enableLocalVideo(!next);
    setState(() => _cameraOff = next);
  }

  Future<void> _switchCamera() => _engine?.switchCamera() ?? Future.value();

  Future<void> _leave() async {
    if (!mounted) return;
    Navigator.of(context).pop();
  }

  Future<void> _startSession() async {
    try {
      await ref.read(sessionActionsProvider.notifier).start(widget.sessionId);
    } catch (error) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(Failure.fromError(error).message)),
        );
      }
    }
  }

  Future<void> _endSession(int bookingId) async {
    try {
      await ref.read(sessionActionsProvider.notifier).end(widget.sessionId);
      if (mounted) context.go(RoutePaths.bookingDetail(bookingId));
    } catch (error) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(Failure.fromError(error).message)),
        );
      }
    }
  }

  void _openChat() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (_) => ChatPanel(sessionId: widget.sessionId),
    );
  }

  Future<void> _openReport(int bookingId) async {
    final endedViaReport = await showDialog<bool>(
      context: context,
      builder: (_) => ReportDialog(sessionId: widget.sessionId),
    );
    if (endedViaReport == true && mounted) {
      context.go(RoutePaths.bookingDetail(bookingId));
    }
  }

  @override
  Widget build(BuildContext context) {
    final detail = ref.watch(sessionDetailProvider(widget.sessionId));
    final isTutor = switch (ref.watch(authProvider)) {
      AuthAuthenticated(user: final user) => user.isTutor,
      _ => false,
    };

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: _setupError != null
            ? Center(
                child: Padding(
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        _setupError!,
                        style: const TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 16),
                      AppButton(label: 'Close', onPressed: () => Navigator.of(context).pop()),
                    ],
                  ),
                ),
              )
            : _isConnecting
                ? const Center(child: CircularProgressIndicator(color: Colors.white))
                : Stack(
                    children: [
                      Positioned.fill(child: _remoteVideo()),
                      Positioned(
                        top: 16,
                        right: 16,
                        width: 120,
                        height: 160,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(AppRadius.sm),
                          child: _localVideo(),
                        ),
                      ),
                      Positioned(
                        top: 16,
                        left: 16,
                        child: detail.maybeWhen(
                          data: (session) => _StatusChip(status: session.status),
                          orElse: () => const SizedBox.shrink(),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: _controls(detail.valueOrNull, isTutor),
                      ),
                    ],
                  ),
      ),
    );
  }

  Widget _remoteVideo() {
    final engine = _engine;
    if (engine == null || _remoteUid == null || _channelName == null) {
      return const Center(
        child: Text('Waiting for the other participant…', style: TextStyle(color: Colors.white70)),
      );
    }
    return AgoraVideoView(
      controller: VideoViewController.remote(
        rtcEngine: engine,
        canvas: VideoCanvas(uid: _remoteUid),
        connection: RtcConnection(channelId: _channelName),
      ),
    );
  }

  Widget _localVideo() {
    final engine = _engine;
    if (engine == null) return const SizedBox.shrink();
    return AgoraVideoView(
      controller: VideoViewController(rtcEngine: engine, canvas: const VideoCanvas(uid: 0)),
    );
  }

  Widget _controls(SessionDetail? session, bool isTutor) {
    return Container(
      color: Colors.black54,
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (session != null && isTutor && session.status == 'active') ...[
            AppButton(label: 'Start session', onPressed: _startSession),
            const SizedBox(height: 8),
          ],
          if (session != null && session.isEndable) ...[
            AppButton(
              label: 'End session',
              outlined: true,
              onPressed: () => _endSession(session.bookingId),
            ),
            const SizedBox(height: 8),
          ],
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: Icon(_micMuted ? Icons.mic_off : Icons.mic, color: Colors.white),
                onPressed: _toggleMic,
              ),
              IconButton(
                icon: Icon(_cameraOff ? Icons.videocam_off : Icons.videocam, color: Colors.white),
                onPressed: _toggleCamera,
              ),
              IconButton(
                icon: const Icon(Icons.cameraswitch, color: Colors.white),
                onPressed: _switchCamera,
              ),
              IconButton(
                icon: const Icon(Icons.chat_bubble_outline, color: Colors.white),
                onPressed: _openChat,
              ),
              IconButton(
                icon: const Icon(Icons.flag_outlined, color: Colors.white),
                onPressed:
                    session == null ? null : () => _openReport(session.bookingId),
              ),
              IconButton(
                icon: const Icon(Icons.call_end, color: Colors.redAccent),
                onPressed: _leave,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _StatusChip extends StatelessWidget {
  const _StatusChip({required this.status});

  final String status;

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(status.replaceAll('_', ' ')),
      backgroundColor: Colors.black54,
      labelStyle: const TextStyle(color: Colors.white),
    );
  }
}
