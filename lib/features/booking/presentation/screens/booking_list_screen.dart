import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/router/route_paths.dart';
import '../../../../core/utils/date_time_formatter.dart';
import '../../../../core/utils/money_formatter.dart';
import '../../../../core/widgets/empty_state.dart';
import '../../../../core/widgets/error_view.dart';
import '../../domain/booking.dart';
import '../providers/booking_list_provider.dart';

const _statusTabs = <String?>[null, 'pending', 'accepted', 'in_progress', 'completed', 'cancelled'];
const _statusLabels = {
  null: 'All',
  'pending': 'Pending',
  'accepted': 'Accepted',
  'in_progress': 'In progress',
  'completed': 'Completed',
  'cancelled': 'Cancelled',
};

class BookingListScreen extends ConsumerStatefulWidget {
  const BookingListScreen({super.key});

  @override
  ConsumerState<BookingListScreen> createState() => _BookingListScreenState();
}

class _BookingListScreenState extends ConsumerState<BookingListScreen>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController =
      TabController(length: _statusTabs.length, vsync: this);

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My bookings'),
        bottom: TabBar(
          controller: _tabController,
          isScrollable: true,
          tabs: _statusTabs.map((s) => Tab(text: _statusLabels[s])).toList(),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: _statusTabs.map((status) => _BookingTab(status: status)).toList(),
      ),
    );
  }
}

class _BookingTab extends ConsumerWidget {
  const _BookingTab({required this.status});

  final String? status;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final result = ref.watch(bookingListProvider(status));

    return result.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, _) => ErrorView(
        failure: Failure.fromError(error),
        onRetry: () => ref.read(bookingListProvider(status).notifier).refresh(),
      ),
      data: (data) {
        if (data.bookings.isEmpty) {
          return const EmptyState(message: 'No bookings here yet.', icon: Icons.event_outlined);
        }
        return RefreshIndicator(
          onRefresh: () async => ref.read(bookingListProvider(status).notifier).refresh(),
          child: ListView.builder(
            padding: const EdgeInsets.all(16),
            itemCount: data.bookings.length + (data.hasMore ? 1 : 0),
            itemBuilder: (context, index) {
              if (index >= data.bookings.length) {
                ref.read(bookingListProvider(status).notifier).loadMore();
                return const Padding(
                  padding: EdgeInsets.symmetric(vertical: 16),
                  child: Center(child: CircularProgressIndicator()),
                );
              }
              return _BookingCard(booking: data.bookings[index]);
            },
          ),
        );
      },
    );
  }
}

class _BookingCard extends StatelessWidget {
  const _BookingCard({required this.booking});

  final Booking booking;

  @override
  Widget build(BuildContext context) {
    final otherParty = booking.tutor ?? booking.student;
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        contentPadding: const EdgeInsets.all(12),
        onTap: () => context.push(RoutePaths.bookingDetail(booking.id)),
        title: Text(booking.subject),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (otherParty != null) Text(otherParty.name),
            Text(DateTimeFormatter.dateTimeLabel(booking.scheduledAt)),
            if (booking.financials != null)
              Text(MoneyFormatter.format(booking.financials!.totalAmount)),
          ],
        ),
        trailing: Chip(label: Text(booking.status.replaceAll('_', ' '))),
      ),
    );
  }
}
