import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/router/route_paths.dart';
import '../../../../core/utils/money_formatter.dart';
import '../../../../core/widgets/empty_state.dart';
import '../../../../core/widgets/error_view.dart';
import '../../domain/tutor_summary.dart';
import '../providers/discover_provider.dart';

class DiscoverScreen extends ConsumerStatefulWidget {
  const DiscoverScreen({super.key});

  @override
  ConsumerState<DiscoverScreen> createState() => _DiscoverScreenState();
}

class _DiscoverScreenState extends ConsumerState<DiscoverScreen> {
  final _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final result = ref.watch(discoverListProvider);
    final filters = ref.watch(discoverFiltersProvider);
    final filtersNotifier = ref.read(discoverFiltersProvider.notifier);

    return Scaffold(
      appBar: AppBar(title: const Text('Discover tutors')),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  TextField(
                    controller: _searchController,
                    decoration: const InputDecoration(
                      hintText: 'Search by name or bio',
                      prefixIcon: Icon(Icons.search),
                    ),
                    onSubmitted: (value) =>
                        filtersNotifier.update((f) => f.copyWith(search: value)),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Expanded(
                        child: DropdownButtonFormField<String>(
                          value: filters.sort,
                          decoration: const InputDecoration(labelText: 'Sort by'),
                          items: const [
                            DropdownMenuItem(value: 'rating', child: Text('Top rated')),
                            DropdownMenuItem(value: 'rate_asc', child: Text('Lowest rate')),
                            DropdownMenuItem(value: 'rate_desc', child: Text('Highest rate')),
                          ],
                          onChanged: (value) {
                            if (value != null) {
                              filtersNotifier.update((f) => f.copyWith(sort: value));
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: result.when(
                loading: () => const Center(child: CircularProgressIndicator()),
                error: (error, _) => ErrorView(
                  failure: Failure.fromError(error),
                  onRetry: () => ref.invalidate(discoverListProvider),
                ),
                data: (data) {
                  if (data.tutors.isEmpty) {
                    return const EmptyState(
                      message: 'No tutors match your filters yet.',
                      icon: Icons.school_outlined,
                    );
                  }
                  return RefreshIndicator(
                    onRefresh: () async => ref.invalidate(discoverListProvider),
                    child: ListView.builder(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      itemCount: data.tutors.length + (data.hasMore ? 1 : 0),
                      itemBuilder: (context, index) {
                        if (index >= data.tutors.length) {
                          ref.read(discoverListProvider.notifier).loadMore();
                          return const Padding(
                            padding: EdgeInsets.symmetric(vertical: 16),
                            child: Center(child: CircularProgressIndicator()),
                          );
                        }
                        return _TutorCard(tutor: data.tutors[index]);
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _TutorCard extends StatelessWidget {
  const _TutorCard({required this.tutor});

  final TutorSummary tutor;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        contentPadding: const EdgeInsets.all(12),
        onTap: () => context.push(RoutePaths.tutorProfile(tutor.id)),
        leading: CircleAvatar(
          backgroundImage: tutor.avatarUrl != null ? NetworkImage(tutor.avatarUrl!) : null,
          child: tutor.avatarUrl == null
              ? Text(tutor.name.isNotEmpty ? tutor.name[0].toUpperCase() : '?')
              : null,
        ),
        title: Text(tutor.name),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (tutor.subjects.isNotEmpty)
              Text(
                tutor.subjects.map((s) => s.name).take(2).join(', '),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            Row(
              children: [
                const Icon(Icons.star, size: 14, color: Colors.amber),
                Text(' ${tutor.averageRating.toStringAsFixed(1)} (${tutor.totalReviews})'),
                const SizedBox(width: 12),
                Text(MoneyFormatter.format(tutor.hourlyRate)),
              ],
            ),
          ],
        ),
        trailing: tutor.tier != null ? Chip(label: Text(tutor.tier!)) : null,
      ),
    );
  }
}
