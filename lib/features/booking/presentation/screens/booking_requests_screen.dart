import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/utils/date_time_formatter.dart';
import '../../../../core/utils/money_formatter.dart';
import '../../../../core/widgets/empty_state.dart';
import '../../../../core/widgets/error_view.dart';
import '../../domain/booking.dart';
import '../providers/booking_detail_provider.dart';
import '../providers/booking_list_provider.dart';

/// Tutor-only: pending booking requests awaiting accept/decline.
class BookingRequestsScreen extends ConsumerWidget {
  const BookingRequestsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final result = ref.watch(pendingRequestsProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Booking requests')),
      body: result.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, _) => ErrorView(
          failure: Failure.fromError(error),
          onRetry: () => ref.read(pendingRequestsProvider.notifier).refresh(),
        ),
        data: (data) {
          if (data.bookings.isEmpty) {
            return const EmptyState(
              message: 'No pending requests. Share your profile to attract students!',
              icon: Icons.inbox_outlined,
            );
          }
          return RefreshIndicator(
            onRefresh: () async => ref.read(pendingRequestsProvider.notifier).refresh(),
            child: ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: data.bookings.length,
              itemBuilder: (context, index) => _RequestCard(booking: data.bookings[index]),
            ),
          );
        },
      ),
    );
  }
}

class _RequestCard extends ConsumerStatefulWidget {
  const _RequestCard({required this.booking});

  final Booking booking;

  @override
  ConsumerState<_RequestCard> createState() => _RequestCardState();
}

class _RequestCardState extends ConsumerState<_RequestCard> {
  bool _isProcessing = false;
  bool _showDeclineForm = false;
  final _reasonController = TextEditingController();

  @override
  void dispose() {
    _reasonController.dispose();
    super.dispose();
  }

  Future<void> _accept() async {
    setState(() => _isProcessing = true);
    try {
      await ref.read(bookingActionsProvider.notifier).accept(widget.booking.id);
    } catch (error) {
      _showError(error);
    } finally {
      if (mounted) setState(() => _isProcessing = false);
    }
  }

  Future<void> _decline() async {
    setState(() => _isProcessing = true);
    try {
      await ref.read(bookingActionsProvider.notifier).decline(
            widget.booking.id,
            reason: _reasonController.text.trim().isEmpty
                ? null
                : _reasonController.text.trim(),
          );
    } catch (error) {
      _showError(error);
    } finally {
      if (mounted) setState(() => _isProcessing = false);
    }
  }

  void _showError(Object error) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(Failure.fromError(error).message)),
    );
  }

  @override
  Widget build(BuildContext context) {
    final booking = widget.booking;
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(booking.subject, style: Theme.of(context).textTheme.titleMedium),
            if (booking.student != null) Text(booking.student!.name),
            Text(
              '${DateTimeFormatter.dateTimeLabel(booking.scheduledAt)} · ${booking.durationMinutes} min',
            ),
            if (booking.financials != null)
              Text(MoneyFormatter.format(booking.financials!.totalAmount)),
            const SizedBox(height: 8),
            if (!_showDeclineForm)
              Row(
                children: [
                  Expanded(
                    child: FilledButton(
                      onPressed: _isProcessing ? null : _accept,
                      child: const Text('Accept'),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: OutlinedButton(
                      onPressed:
                          _isProcessing ? null : () => setState(() => _showDeclineForm = true),
                      child: const Text('Decline'),
                    ),
                  ),
                ],
              )
            else
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextField(
                    controller: _reasonController,
                    decoration: const InputDecoration(labelText: 'Reason (optional)'),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Expanded(
                        child: OutlinedButton(
                          onPressed:
                              _isProcessing ? null : () => setState(() => _showDeclineForm = false),
                          child: const Text('Cancel'),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: FilledButton(
                          onPressed: _isProcessing ? null : _decline,
                          child: const Text('Confirm decline'),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
