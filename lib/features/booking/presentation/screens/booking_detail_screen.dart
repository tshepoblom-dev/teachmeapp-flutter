import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/router/route_paths.dart';
import '../../../../core/utils/date_time_formatter.dart';
import '../../../../core/utils/money_formatter.dart';
import '../../../../core/widgets/app_button.dart';
import '../../../../core/widgets/error_view.dart';
import '../../domain/booking.dart';
import '../../domain/session_preview.dart';
import '../providers/booking_detail_provider.dart';

class BookingDetailScreen extends ConsumerStatefulWidget {
  const BookingDetailScreen({super.key, required this.bookingId});

  final int bookingId;

  @override
  ConsumerState<BookingDetailScreen> createState() => _BookingDetailScreenState();
}

class _BookingDetailScreenState extends ConsumerState<BookingDetailScreen> {
  bool _showCancelForm = false;
  final _cancelReasonController = TextEditingController();

  @override
  void dispose() {
    _cancelReasonController.dispose();
    super.dispose();
  }

  Future<void> _cancel() async {
    try {
      await ref.read(bookingActionsProvider.notifier).cancel(
            widget.bookingId,
            reason: _cancelReasonController.text.trim().isEmpty
                ? null
                : _cancelReasonController.text.trim(),
          );
      if (mounted) setState(() => _showCancelForm = false);
    } catch (error) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(Failure.fromError(error).message)),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final detail = ref.watch(bookingDetailProvider(widget.bookingId));
    final actionState = ref.watch(bookingActionsProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Booking details')),
      body: detail.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, _) => ErrorView(
          failure: Failure.fromError(error),
          onRetry: () => ref.read(bookingDetailProvider(widget.bookingId).notifier).refresh(),
        ),
        data: (booking) {
          return SafeArea(
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: [
                Text(booking.subject, style: Theme.of(context).textTheme.headlineSmall),
                Chip(label: Text(booking.status.replaceAll('_', ' '))),
                const SizedBox(height: 12),
                if (booking.tutor != null) Text('Tutor: ${booking.tutor!.name}'),
                if (booking.student != null) Text('Student: ${booking.student!.name}'),
                Text(DateTimeFormatter.dateTimeLabel(booking.scheduledAt)),
                Text('${booking.durationMinutes} minutes'),
                if (booking.description != null && booking.description!.isNotEmpty) ...[
                  const SizedBox(height: 8),
                  Text(booking.description!),
                ],
                if (booking.financials != null) ...[
                  const SizedBox(height: 16),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Amount', style: Theme.of(context).textTheme.titleSmall),
                          Text(MoneyFormatter.format(booking.financials!.totalAmount)),
                          if (booking.escrow?.status != null) ...[
                            const SizedBox(height: 8),
                            Text('Escrow status: ${booking.escrow!.status}'),
                          ],
                        ],
                      ),
                    ),
                  ),
                ],
                if (booking.session != null && booking.session!.isJoinable) ...[
                  const SizedBox(height: 16),
                  AppButton(
                    label: 'Join session',
                    onPressed: () =>
                        context.push(RoutePaths.liveSession(booking.session!.id)),
                  ),
                ],
                if (booking.cancellation?.reason != null) ...[
                  const SizedBox(height: 16),
                  Text('Cancellation reason: ${booking.cancellation!.reason}'),
                ],
                if (booking.canReview) ...[
                  const SizedBox(height: 16),
                  _ReviewForm(bookingId: booking.id),
                ],
                if (booking.review != null) ...[
                  const SizedBox(height: 16),
                  Card(
                    child: ListTile(
                      title: Row(
                        children: List.generate(
                          5,
                          (i) => Icon(
                            i < booking.review!.rating ? Icons.star : Icons.star_border,
                            size: 16,
                            color: Colors.amber,
                          ),
                        ),
                      ),
                      subtitle: Text(booking.review!.comment ?? ''),
                    ),
                  ),
                ],
                if (booking.isCancellable) ...[
                  const SizedBox(height: 24),
                  if (!_showCancelForm)
                    AppButton(
                      label: 'Cancel booking',
                      outlined: true,
                      onPressed: () => setState(() => _showCancelForm = true),
                    )
                  else
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        TextField(
                          controller: _cancelReasonController,
                          decoration: const InputDecoration(
                            labelText: 'Reason (optional)',
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          'Cancelling close to the session start time may incur a penalty '
                          'per the platform cancellation policy.',
                          style: TextStyle(fontSize: 12),
                        ),
                        const SizedBox(height: 8),
                        AppButton(
                          label: 'Confirm cancellation',
                          isLoading: actionState.isLoading,
                          onPressed: _cancel,
                        ),
                      ],
                    ),
                ],
              ],
            ),
          );
        },
      ),
    );
  }
}

class _ReviewForm extends ConsumerStatefulWidget {
  const _ReviewForm({required this.bookingId});

  final int bookingId;

  @override
  ConsumerState<_ReviewForm> createState() => _ReviewFormState();
}

class _ReviewFormState extends ConsumerState<_ReviewForm> {
  int _rating = 0;
  final _commentController = TextEditingController();
  bool _isSubmitting = false;

  @override
  void dispose() {
    _commentController.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    setState(() => _isSubmitting = true);
    try {
      await ref.read(bookingActionsProvider.notifier).submitReview(
            widget.bookingId,
            rating: _rating,
            comment: _commentController.text.trim(),
          );
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
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Leave a review', style: Theme.of(context).textTheme.titleSmall),
            const SizedBox(height: 8),
            Row(
              children: List.generate(
                5,
                (i) => IconButton(
                  icon: Icon(
                    i < _rating ? Icons.star : Icons.star_border,
                    color: Colors.amber,
                  ),
                  onPressed: () => setState(() => _rating = i + 1),
                ),
              ),
            ),
            TextField(
              controller: _commentController,
              decoration: const InputDecoration(labelText: 'Comment (optional)'),
              maxLines: 3,
            ),
            const SizedBox(height: 8),
            AppButton(
              label: 'Submit review',
              isLoading: _isSubmitting,
              onPressed: _rating > 0 ? _submit : null,
            ),
          ],
        ),
      ),
    );
  }
}
