import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/utils/date_time_formatter.dart';
import '../../../../core/widgets/empty_state.dart';
import '../../../../core/widgets/error_view.dart';
import '../../../auth/presentation/providers/auth_provider.dart';
import '../../../availability/presentation/screens/availability_screen.dart';
import '../../../booking/presentation/providers/booking_list_provider.dart';
import '../../../booking/presentation/screens/booking_list_screen.dart';
import '../../../booking/presentation/screens/booking_requests_screen.dart';
import '../../../kyc/domain/kyc_status.dart';
import '../../../kyc/presentation/providers/kyc_provider.dart';
import '../../../kyc/presentation/screens/kyc_screen.dart';
import '../../../notifications/presentation/widgets/notification_bell.dart';
import '../../../profile/presentation/screens/profile_screen.dart';
import '../../../wallet/presentation/screens/payouts_screen.dart';
import '../../../wallet/presentation/screens/wallet_screen.dart';
import '../widgets/role_bottom_nav.dart';

class TutorHomeShell extends ConsumerStatefulWidget {
  const TutorHomeShell({super.key});

  @override
  ConsumerState<TutorHomeShell> createState() => _TutorHomeShellState();
}

class _TutorHomeShellState extends ConsumerState<TutorHomeShell> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    final user = ref.watch(authProvider).maybeWhen(
          authenticated: (user) => user,
          accountIssue: (user, _, __) => user,
          orElse: () => null,
        );

    final pages = [
      _TutorDashboard(name: user?.name ?? ''),
      const AvailabilityScreen(),
      const BookingRequestsScreen(),
      const BookingListScreen(),
      const ProfileScreen(),
    ];

    return Scaffold(
      body: IndexedStack(index: _index, children: pages),
      bottomNavigationBar: RoleBottomNav(
        currentIndex: _index,
        onTap: (i) => setState(() => _index = i),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_month_outlined), label: 'Availability'),
          BottomNavigationBarItem(icon: Icon(Icons.inbox_outlined), label: 'Requests'),
          BottomNavigationBarItem(icon: Icon(Icons.event_outlined), label: 'Bookings'),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: 'Profile'),
        ],
      ),
    );
  }
}

class _TutorDashboard extends ConsumerWidget {
  const _TutorDashboard({required this.name});

  final String name;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final upcoming = ref.watch(upcomingBookingsProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('TeachMeApp'),
        backgroundColor: AppColors.navy,
        actions: [
          IconButton(
            icon: const Icon(Icons.account_balance_wallet_outlined),
            tooltip: 'Wallet',
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (_) => const WalletScreen()),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.payments_outlined),
            tooltip: 'Payouts',
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (_) => const PayoutsScreen()),
            ),
          ),
          const NotificationBell(),
        ],
      ),
      body: SafeArea(
        child: RefreshIndicator(
          onRefresh: () async => ref.invalidate(upcomingBookingsProvider),
          child: ListView(
            padding: const EdgeInsets.all(24),
            children: [
              Text('Welcome, $name', style: Theme.of(context).textTheme.headlineSmall),
              const SizedBox(height: 16),
              const _KycStatusCard(),
              const SizedBox(height: 24),
              Text('Upcoming sessions', style: Theme.of(context).textTheme.titleMedium),
              const SizedBox(height: 8),
              upcoming.when(
                loading: () => const Center(child: CircularProgressIndicator()),
                error: (error, _) => ErrorView(failure: Failure.fromError(error)),
                data: (bookings) {
                  if (bookings.isEmpty) {
                    return const EmptyState(message: 'No upcoming sessions yet.');
                  }
                  return Column(
                    children: bookings
                        .map((b) => Card(
                              child: ListTile(
                                title: Text(b.subject),
                                subtitle: Text(
                                  '${b.student?.name ?? ''} · ${DateTimeFormatter.dateTimeLabel(b.scheduledAt)}',
                                ),
                              ),
                            ))
                        .toList(),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _KycStatusCard extends ConsumerWidget {
  const _KycStatusCard();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final status = ref.watch(kycStatusProvider);

    return status.when(
      loading: () => const SizedBox.shrink(),
      error: (error, _) => const SizedBox.shrink(),
      data: (summary) {
        if (summary.isApproved) return const SizedBox.shrink();
        return Card(
          child: ListTile(
            leading: const Icon(Icons.verified_user_outlined),
            title: Text('Identity verification: ${summary.kycStatus.replaceAll('_', ' ')}'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (_) => const KycScreen()),
            ),
          ),
        );
      },
    );
  }
}
