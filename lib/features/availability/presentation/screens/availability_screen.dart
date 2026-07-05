import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/widgets/app_button.dart';
import '../../../../core/widgets/empty_state.dart';
import '../../../../core/widgets/error_view.dart';
import '../../domain/availability_slot.dart';
import '../providers/availability_provider.dart';

const _weekdayNames = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];

class AvailabilityScreen extends ConsumerStatefulWidget {
  const AvailabilityScreen({super.key});

  @override
  ConsumerState<AvailabilityScreen> createState() => _AvailabilityScreenState();
}

class _AvailabilityScreenState extends ConsumerState<AvailabilityScreen> {
  int _dayOfWeek = 0;
  TimeOfDay _start = const TimeOfDay(hour: 9, minute: 0);
  TimeOfDay _end = const TimeOfDay(hour: 10, minute: 0);
  bool _isRecurring = true;
  bool _isSubmitting = false;
  String? _error;

  String _formatTimeOfDay(TimeOfDay t) =>
      '${t.hour.toString().padLeft(2, '0')}:${t.minute.toString().padLeft(2, '0')}';

  Future<void> _pickTime(bool isStart) async {
    final picked = await showTimePicker(
      context: context,
      initialTime: isStart ? _start : _end,
    );
    if (picked == null) return;
    setState(() => isStart ? _start = picked : _end = picked);
  }

  Future<void> _addSlot() async {
    setState(() {
      _isSubmitting = true;
      _error = null;
    });
    try {
      await ref.read(availabilityListProvider.notifier).createSlot(
            dayOfWeek: _dayOfWeek,
            startTime: _formatTimeOfDay(_start),
            endTime: _formatTimeOfDay(_end),
            isRecurring: _isRecurring,
          );
    } catch (error) {
      setState(() => _error = Failure.fromError(error).message);
    } finally {
      if (mounted) setState(() => _isSubmitting = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final slots = ref.watch(availabilityListProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Availability')),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text('Add a slot', style: Theme.of(context).textTheme.titleSmall),
                    const SizedBox(height: 8),
                    Wrap(
                      spacing: 8,
                      children: List.generate(7, (i) {
                        return ChoiceChip(
                          label: Text(_weekdayNames[i]),
                          selected: _dayOfWeek == i,
                          onSelected: (_) => setState(() => _dayOfWeek = i),
                        );
                      }),
                    ),
                    const SizedBox(height: 12),
                    Row(
                      children: [
                        Expanded(
                          child: OutlinedButton(
                            onPressed: () => _pickTime(true),
                            child: Text('Start: ${_formatTimeOfDay(_start)}'),
                          ),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: OutlinedButton(
                            onPressed: () => _pickTime(false),
                            child: Text('End: ${_formatTimeOfDay(_end)}'),
                          ),
                        ),
                      ],
                    ),
                    CheckboxListTile(
                      value: _isRecurring,
                      title: const Text('Recurring weekly'),
                      controlAffinity: ListTileControlAffinity.leading,
                      onChanged: (v) => setState(() => _isRecurring = v ?? true),
                    ),
                    if (_error != null)
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: Text(
                          _error!,
                          style: TextStyle(color: Theme.of(context).colorScheme.error),
                        ),
                      ),
                    AppButton(
                      label: 'Add slot',
                      isLoading: _isSubmitting,
                      onPressed: _addSlot,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            Text('Your schedule', style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 8),
            slots.when(
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (error, _) => ErrorView(
                failure: Failure.fromError(error),
                onRetry: () => ref.invalidate(availabilityListProvider),
              ),
              data: (data) {
                if (data.isEmpty) {
                  return const EmptyState(
                    message: 'No slots set yet. Add your first availability window.',
                  );
                }
                return Column(children: data.map((s) => _SlotCard(slot: s)).toList());
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _SlotCard extends ConsumerWidget {
  const _SlotCard({required this.slot});

  final AvailabilitySlot slot;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
      child: ListTile(
        title: Text('${_weekdayNames[slot.dayOfWeek]}  ${slot.startTime} – ${slot.endTime}'),
        subtitle: Text([
          if (slot.isRecurring) 'Weekly',
          if (!slot.isActive) 'Inactive',
        ].join(' · ')),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              icon: Icon(slot.isActive ? Icons.pause_circle_outline : Icons.play_circle_outline),
              tooltip: slot.isActive ? 'Deactivate' : 'Activate',
              onPressed: () => ref.read(availabilityListProvider.notifier).toggleSlot(slot),
            ),
            IconButton(
              icon: const Icon(Icons.delete_outline),
              tooltip: 'Remove',
              onPressed: () => ref.read(availabilityListProvider.notifier).deleteSlot(slot.id),
            ),
          ],
        ),
      ),
    );
  }
}
