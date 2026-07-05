import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/widgets/app_button.dart';
import '../providers/session_actions_provider.dart';

/// `action_taken` is `continue_session` or `end_session` (confirmed against
/// `SubmitReportRequest`) — there is no `report_only` option.
class ReportDialog extends ConsumerStatefulWidget {
  const ReportDialog({super.key, required this.sessionId});

  final int sessionId;

  @override
  ConsumerState<ReportDialog> createState() => _ReportDialogState();
}

class _ReportDialogState extends ConsumerState<ReportDialog> {
  final _reasonController = TextEditingController();
  final _descriptionController = TextEditingController();
  bool _endSession = false;
  bool _isSubmitting = false;

  @override
  void dispose() {
    _reasonController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    final reason = _reasonController.text.trim();
    if (reason.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please enter a reason.')),
      );
      return;
    }

    setState(() => _isSubmitting = true);
    try {
      final message = await ref.read(sessionActionsProvider.notifier).submitReport(
            widget.sessionId,
            reason: reason,
            description:
                _descriptionController.text.trim().isEmpty ? null : _descriptionController.text.trim(),
            actionTaken: _endSession ? 'end_session' : 'continue_session',
          );
      if (mounted) {
        Navigator.of(context).pop(_endSession);
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
      }
    } catch (error) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(Failure.fromError(error).message)),
        );
      }
    } finally {
      if (mounted) setState(() => _isSubmitting = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Report an issue'),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: _reasonController,
              decoration: const InputDecoration(labelText: 'Reason'),
              maxLength: 255,
            ),
            TextField(
              controller: _descriptionController,
              decoration: const InputDecoration(labelText: 'Description (optional)'),
              maxLines: 3,
              maxLength: 2000,
            ),
            SwitchListTile(
              contentPadding: EdgeInsets.zero,
              title: const Text('End the session now'),
              value: _endSession,
              onChanged: (value) => setState(() => _endSession = value),
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: _isSubmitting ? null : () => Navigator.of(context).pop(),
          child: const Text('Cancel'),
        ),
        AppButton(
          label: 'Submit',
          isLoading: _isSubmitting,
          onPressed: _isSubmitting ? null : _submit,
        ),
      ],
    );
  }
}
