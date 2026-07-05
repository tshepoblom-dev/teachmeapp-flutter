import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/utils/date_time_formatter.dart';
import '../../../../core/widgets/empty_state.dart';
import '../../../../core/widgets/error_view.dart';
import '../../../auth/presentation/providers/auth_provider.dart';
import '../../../booking/presentation/providers/booking_list_provider.dart';
import '../../../booking/presentation/screens/booking_list_screen.dart';
import '../../../discover/presentation/screens/discover_screen.dart';
import '../../../notifications/presentation/widgets/notification_bell.dart';
import '../../../profile/presentation/screens/profile_screen.dart';
import '../../../wallet/presentation/screens/wallet_screen.dart';
import '../widgets/role_bottom_nav.dart';

class StudentHomeShell extends ConsumerStatefulWidget {
  const StudentHomeShell({super.key});

  @override
  ConsumerState<StudentHomeShell> createState() => _StudentHomeShellState();
}

class _StudentHomeShellState extends ConsumerState<StudentHomeShell> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    final user = ref.watch(authProvider).maybeWhen(
          authenticated: (user) => user,
          accountIssue: (user, _, __) => user,
          orElse: () => null,
        );

    final pages = [
      _StudentDashboard(name: user?.name ?? '', onFindTutor: () => setState(() => _index = 1)),
      const DiscoverScreen(),
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
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Discover'),
          BottomNavigationBarItem(icon: Icon(Icons.event_outlined), label: 'Bookings'),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: 'Profile'),
        ],
      ),
    );
  }
}

class _StudentDashboard extends ConsumerWidget {
  const _StudentDashboard({required this.name, required this.onFindTutor});

  final String name;
  final VoidCallback onFindTutor;

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
              FilledButton.icon(
                onPressed: onFindTutor,
                icon: const Icon(Icons.search),
                label: const Text('Find a tutor'),
              ),
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
                                  '${b.tutor?.name ?? ''} · ${DateTimeFormatter.dateTimeLabel(b.scheduledAt)}',
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
