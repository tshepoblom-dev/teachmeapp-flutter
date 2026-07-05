import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/router/route_paths.dart';
import '../../../../core/utils/date_time_formatter.dart';
import '../../../../core/utils/money_formatter.dart';
import '../../../../core/widgets/app_button.dart';
import '../../../../core/widgets/error_view.dart';
import '../../../discover/domain/availability_window.dart';
import '../../../discover/presentation/providers/tutor_profile_provider.dart';
import '../../domain/booking_create_form_state.dart';
import '../providers/booking_create_provider.dart';

/// Renders only the tutor's raw weekly availability windows — there is no
/// API endpoint exposing existing-booking conflicts for this picker (see
/// plan: deferred to a later iteration). Conflicts surface as a 422 from
/// the server on submit instead of being shaded out up front.
class BookingCreateScreen extends ConsumerStatefulWidget {
  const BookingCreateScreen({super.key, required this.tutorId});

  final int tutorId;

  @override
  ConsumerState<BookingCreateScreen> createState() => _BookingCreateScreenState();
}

class _BookingCreateScreenState extends ConsumerState<BookingCreateScreen> {
  DateTime? _selectedDay;
  String? _generalError;
  bool _isSubmitting = false;

  List<DateTime> _candidateDays(List<AvailabilityWindow> windows) {
    final weekdays = windows.map((w) => w.dayOfWeek).toSet();
    final today = DateTime.now();
    return List.generate(21, (i) => DateTime(today.year, today.month, today.day + i))
        .where((d) => weekdays.contains(d.weekday - 1)) // backend: 0=Mon
        .toList();
  }

  List<DateTime> _slotsForDay(DateTime day, List<AvailabilityWindow> windows, int duration) {
    final dow = day.weekday - 1;
    final slots = <DateTime>[];
    for (final window in windows.where((w) => w.dayOfWeek == dow)) {
      final startParts = window.startTime.split(':').map(int.parse).toList();
      final endParts = window.endTime.split(':').map(int.parse).toList();
      var cursor = DateTime(day.year, day.month, day.day, startParts[0], startParts[1]);
      final end = DateTime(day.year, day.month, day.day, endParts[0], endParts[1]);
      while (!cursor.add(Duration(minutes: duration)).isAfter(end)) {
        if (cursor.isAfter(DateTime.now())) slots.add(cursor);
        cursor = cursor.add(const Duration(minutes: 30));
      }
    }
    return slots;
  }

  Future<void> _submit(int tutorId) async {
    setState(() {
      _isSubmitting = true;
      _generalError = null;
    });
    try {
      final booking = await ref.read(bookingCreateProvider(tutorId).notifier).submit();
      if (mounted) context.go(RoutePaths.bookingDetail(booking.id));
    } catch (error) {
      final failure = Failure.fromError(error);
      if (failure.fieldErrors == null) {
        setState(() => _generalError = failure.message);
      }
    } finally {
      if (mounted) setState(() => _isSubmitting = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final profile = ref.watch(tutorProfileProvider(widget.tutorId));
    final form = ref.watch(bookingCreateProvider(widget.tutorId));
    final formNotifier = ref.read(bookingCreateProvider(widget.tutorId).notifier);

    return Scaffold(
      appBar: AppBar(title: const Text('Book a session')),
      body: profile.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, _) => ErrorView(
          failure: Failure.fromError(error),
          onRetry: () => ref.invalidate(tutorProfileProvider(widget.tutorId)),
        ),
        data: (detail) {
          final tutor = detail.tutor;
          final days = _candidateDays(detail.availability);
          final slots = _selectedDay != null
              ? _slotsForDay(_selectedDay!, detail.availability, form.durationMinutes)
              : <DateTime>[];

          return SafeArea(
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: [
                Text(tutor.name, style: Theme.of(context).textTheme.titleLarge),
                Text('${MoneyFormatter.format(tutor.hourlyRate)}/hour'),
                const SizedBox(height: 16),
                DropdownButtonFormField<String>(
                  value: form.subject,
                  decoration: const InputDecoration(labelText: 'Subject'),
                  items: tutor.subjects
                      .map((s) => DropdownMenuItem(value: s.name, child: Text(s.name)))
                      .toList(),
                  onChanged: (value) {
                    if (value != null) formNotifier.setSubject(value);
                  },
                ),
                if (form.fieldErrors?['subject'] != null)
                  Text(
                    form.fieldErrors!['subject']!.first,
                    style: TextStyle(color: Theme.of(context).colorScheme.error),
                  ),
                const SizedBox(height: 16),
                TextField(
                  decoration: const InputDecoration(labelText: 'Notes (optional)'),
                  maxLines: 3,
                  onChanged: formNotifier.setDescription,
                ),
                const SizedBox(height: 16),
                Text('Duration', style: Theme.of(context).textTheme.titleSmall),
                Wrap(
                  spacing: 8,
                  children: kDurationOptions.map((minutes) {
                    final label = minutes >= 60
                        ? '${minutes ~/ 60}h${minutes % 60 == 0 ? '' : ' ${minutes % 60}m'}'
                        : '${minutes}m';
                    return ChoiceChip(
                      label: Text(label),
                      selected: form.durationMinutes == minutes,
                      onSelected: (_) => formNotifier.setDuration(minutes),
                    );
                  }).toList(),
                ),
                const SizedBox(height: 16),
                Text('Pick a day', style: Theme.of(context).textTheme.titleSmall),
                SizedBox(
                  height: 56,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: days.length,
                    separatorBuilder: (_, __) => const SizedBox(width: 8),
                    itemBuilder: (context, index) {
                      final day = days[index];
                      final isSelected = _selectedDay != null &&
                          _selectedDay!.year == day.year &&
                          _selectedDay!.month == day.month &&
                          _selectedDay!.day == day.day;
                      return ChoiceChip(
                        label: Text(DateTimeFormatter.shortDate(day)),
                        selected: isSelected,
                        onSelected: (_) => setState(() => _selectedDay = day),
                      );
                    },
                  ),
                ),
                if (_selectedDay != null) ...[
                  const SizedBox(height: 16),
                  Text('Pick a time', style: Theme.of(context).textTheme.titleSmall),
                  if (slots.isEmpty)
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 8),
                      child: Text('No times available for this duration on this day.'),
                    )
                  else
                    Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: slots.map((slot) {
                        final isSelected = form.scheduledAt == slot;
                        return ChoiceChip(
                          label: Text(DateTimeFormatter.time(slot)),
                          selected: isSelected,
                          onSelected: (_) => formNotifier.setScheduledAt(slot),
                        );
                      }).toList(),
                    ),
                ],
                const SizedBox(height: 24),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Total'),
                        Text(
                          MoneyFormatter.format(formNotifier.previewTotal(tutor.hourlyRate)),
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      ],
                    ),
                  ),
                ),
                if (_generalError != null) ...[
                  const SizedBox(height: 12),
                  Text(
                    _generalError!,
                    style: TextStyle(color: Theme.of(context).colorScheme.error),
                  ),
                ],
                const SizedBox(height: 16),
                AppButton(
                  label: 'Send booking request',
                  isLoading: _isSubmitting,
                  onPressed: form.subject != null && form.scheduledAt != null
                      ? () => _submit(widget.tutorId)
                      : null,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
