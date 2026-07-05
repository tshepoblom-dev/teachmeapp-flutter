import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/network/dio_provider.dart';
import '../../data/discover_api.dart';
import '../../data/discover_repository.dart';
import '../../domain/discover_filters.dart';
import '../../domain/tutor_summary.dart';

final discoverApiProvider = Provider<DiscoverApi>((ref) => DiscoverApi(ref.watch(dioProvider)));

final discoverRepositoryProvider = Provider<DiscoverRepository>((ref) {
  return DiscoverRepository(ref.watch(discoverApiProvider));
});

class DiscoverFiltersNotifier extends Notifier<DiscoverFilters> {
  @override
  DiscoverFilters build() => const DiscoverFilters();

  void update(DiscoverFilters Function(DiscoverFilters current) updater) {
    state = updater(state);
  }

  void reset() => state = const DiscoverFilters();
}

final discoverFiltersProvider =
    NotifierProvider<DiscoverFiltersNotifier, DiscoverFilters>(DiscoverFiltersNotifier.new);

class DiscoverResult {
  const DiscoverResult({required this.tutors, required this.hasMore, required this.page});

  final List<TutorSummary> tutors;
  final bool hasMore;
  final int page;
}

/// Re-fetches page 1 automatically whenever [discoverFiltersProvider]
/// changes (via `ref.watch`); [loadMore] appends subsequent pages.
class DiscoverListNotifier extends AsyncNotifier<DiscoverResult> {
  @override
  Future<DiscoverResult> build() async {
    final filters = ref.watch(discoverFiltersProvider);
    final page = await ref.read(discoverRepositoryProvider).searchTutors(filters);
    return DiscoverResult(tutors: page.data, hasMore: page.hasMore, page: page.currentPage);
  }

  Future<void> loadMore() async {
    final current = state.valueOrNull;
    if (current == null || !current.hasMore) return;

    final filters = ref.read(discoverFiltersProvider);
    final next = await ref
        .read(discoverRepositoryProvider)
        .searchTutors(filters, page: current.page + 1);

    state = AsyncValue.data(DiscoverResult(
      tutors: [...current.tutors, ...next.data],
      hasMore: next.hasMore,
      page: next.currentPage,
    ));
  }
}

final discoverListProvider =
    AsyncNotifierProvider<DiscoverListNotifier, DiscoverResult>(DiscoverListNotifier.new);
