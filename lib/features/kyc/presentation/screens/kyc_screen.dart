import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/widgets/app_button.dart';
import '../../../../core/widgets/error_view.dart';
import '../../../auth/domain/auth_state.dart';
import '../../../auth/domain/user.dart';
import '../../../auth/presentation/providers/auth_provider.dart';
import '../../domain/kyc_document.dart';
import '../../domain/kyc_status.dart';
import '../providers/kyc_provider.dart';

const _documentLabels = {
  'national_id': 'National ID',
  'passport': 'Passport',
  'drivers_licence': "Driver's licence",
  'selfie': 'Selfie',
  'proof_of_qualification': 'Proof of qualification',
  'proof_of_address': 'Proof of address',
  'other': 'Other',
};

class KycScreen extends ConsumerWidget {
  const KycScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final status = ref.watch(kycStatusProvider);
    final isTutor = switch (ref.watch(authProvider)) {
      AuthAuthenticated(user: final user) => user.isTutor,
      AuthAccountIssue(user: final user) => user.isTutor,
      _ => false,
    };

    return Scaffold(
      appBar: AppBar(title: const Text('Identity verification')),
      body: status.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, _) => ErrorView(
          failure: Failure.fromError(error),
          onRetry: () => ref.read(kycStatusProvider.notifier).refresh(),
        ),
        data: (summary) {
          if (summary.application == null) {
            return _ApplyPrompt(applicationType: isTutor ? 'new_tutor' : 'student_upgrade');
          }
          return _ApplicationView(summary: summary);
        },
      ),
    );
  }
}

class _ApplyPrompt extends ConsumerWidget {
  const _ApplyPrompt({required this.applicationType});

  final String applicationType;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.badge_outlined, size: 48),
            const SizedBox(height: 16),
            const Text(
              'Verify your identity to unlock full platform access.',
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            AppButton(
              label: 'Start verification',
              onPressed: () async {
                try {
                  await ref.read(kycStatusProvider.notifier).apply(applicationType);
                } catch (error) {
                  if (context.mounted) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text(Failure.fromError(error).message)),
                    );
                  }
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _ApplicationView extends ConsumerWidget {
  const _ApplicationView({required this.summary});

  final KycStatusSummary summary;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final application = summary.application!;

    return RefreshIndicator(
      onRefresh: () async => ref.read(kycStatusProvider.notifier).refresh(),
      child: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Status', style: Theme.of(context).textTheme.titleSmall),
                  Chip(label: Text(application.status.replaceAll('_', ' '))),
                  if (application.rejectionReason != null) ...[
                    const SizedBox(height: 8),
                    Text(
                      'Rejected: ${application.rejectionReason}',
                      style: const TextStyle(color: Colors.redAccent),
                    ),
                  ],
                  if (application.canSubmit == true) ...[
                    const SizedBox(height: 8),
                    const Text('All documents uploaded — waiting for review.'),
                  ],
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),
          Text('Documents', style: Theme.of(context).textTheme.titleMedium),
          const SizedBox(height: 8),
          for (final doc in application.documents) _DocumentTile(document: doc),
          if (summary.missingDocs.isNotEmpty) ...[
            const SizedBox(height: 8),
            Text('Still needed', style: Theme.of(context).textTheme.titleSmall),
            for (final type in summary.missingDocs) _UploadTile(documentType: type),
          ],
        ],
      ),
    );
  }
}

class _DocumentTile extends ConsumerWidget {
  const _DocumentTile({required this.document});

  final KycDocument document;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final canDelete = document.status != 'approved';
    return Card(
      margin: const EdgeInsets.only(bottom: 8),
      child: ListTile(
        title: Text(_documentLabels[document.documentType] ?? document.documentType),
        subtitle: Text(document.status.replaceAll('_', ' ')),
        trailing: canDelete
            ? IconButton(
                icon: const Icon(Icons.delete_outline),
                onPressed: () async {
                  try {
                    await ref.read(kycStatusProvider.notifier).deleteDocument(document.id);
                  } catch (error) {
                    if (context.mounted) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text(Failure.fromError(error).message)),
                      );
                    }
                  }
                },
              )
            : const Icon(Icons.check_circle, color: Colors.green),
      ),
    );
  }
}

class _UploadTile extends ConsumerStatefulWidget {
  const _UploadTile({required this.documentType});

  final String documentType;

  @override
  ConsumerState<_UploadTile> createState() => _UploadTileState();
}

class _UploadTileState extends ConsumerState<_UploadTile> {
  bool _isUploading = false;

  Future<void> _pickAndUpload() async {
    final result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: const ['jpg', 'jpeg', 'png', 'pdf', 'heic'],
    );
    final path = result?.files.single.path;
    if (path == null) return;

    setState(() => _isUploading = true);
    try {
      await ref
          .read(kycStatusProvider.notifier)
          .uploadDocument(file: File(path), documentType: widget.documentType);
    } catch (error) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(Failure.fromError(error).message)),
        );
      }
    } finally {
      if (mounted) setState(() => _isUploading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 8),
      child: ListTile(
        title: Text(_documentLabels[widget.documentType] ?? widget.documentType),
        trailing: _isUploading
            ? const SizedBox(
                width: 20,
                height: 20,
                child: CircularProgressIndicator(strokeWidth: 2),
              )
            : TextButton(onPressed: _pickAndUpload, child: const Text('Upload')),
      ),
    );
  }
}
