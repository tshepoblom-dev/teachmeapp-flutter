import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/network/dio_provider.dart';
import '../../data/wallet_api.dart';
import '../../data/wallet_repository.dart';
import '../../domain/wallet.dart';
import '../../domain/wallet_transaction.dart';

final walletApiProvider = Provider<WalletApi>((ref) => WalletApi(ref.watch(dioProvider)));

final walletRepositoryProvider = Provider<WalletRepository>((ref) {
  return WalletRepository(ref.watch(walletApiProvider));
});

class WalletNotifier extends AsyncNotifier<Wallet> {
  @override
  Future<Wallet> build() => ref.read(walletRepositoryProvider).fetchWallet();

  void refresh() => ref.invalidateSelf();
}

final walletProvider = AsyncNotifierProvider<WalletNotifier, Wallet>(WalletNotifier.new);

class WalletTransactionsResult {
  const WalletTransactionsResult({
    required this.transactions,
    required this.hasMore,
    required this.page,
  });

  final List<WalletTransaction> transactions;
  final bool hasMore;
  final int page;
}

class WalletTransactionsNotifier extends AsyncNotifier<WalletTransactionsResult> {
  @override
  Future<WalletTransactionsResult> build() async {
    final page = await ref.read(walletRepositoryProvider).fetchWalletTransactions();
    return WalletTransactionsResult(
      transactions: page.data,
      hasMore: page.hasMore,
      page: page.currentPage,
    );
  }

  Future<void> loadMore() async {
    final current = state.valueOrNull;
    if (current == null || !current.hasMore) return;

    final next = await ref
        .read(walletRepositoryProvider)
        .fetchWalletTransactions(page: current.page + 1);

    state = AsyncValue.data(WalletTransactionsResult(
      transactions: [...current.transactions, ...next.data],
      hasMore: next.hasMore,
      page: next.currentPage,
    ));
  }

  void refresh() => ref.invalidateSelf();
}

final walletTransactionsProvider =
    AsyncNotifierProvider<WalletTransactionsNotifier, WalletTransactionsResult>(
  WalletTransactionsNotifier.new,
);
