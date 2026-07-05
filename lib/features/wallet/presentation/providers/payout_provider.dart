import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/payout_account.dart';
import '../../domain/payout_transaction.dart';
import 'wallet_provider.dart';

class PayoutAccountsNotifier extends AsyncNotifier<List<PayoutAccount>> {
  @override
  Future<List<PayoutAccount>> build() => ref.read(walletRepositoryProvider).fetchPayoutAccounts();

  Future<void> createAccount({
    required String accountType,
    required String accountHolderName,
    String? accountNumber,
    String? branchCode,
    String? bankName,
    bool isDefault = false,
  }) async {
    await ref.read(walletRepositoryProvider).createPayoutAccount(
          accountType: accountType,
          accountHolderName: accountHolderName,
          accountNumber: accountNumber,
          branchCode: branchCode,
          bankName: bankName,
          isDefault: isDefault,
        );
    ref.invalidateSelf();
  }

  Future<void> setDefault(int accountId) async {
    await ref.read(walletRepositoryProvider).setDefaultPayoutAccount(accountId);
    ref.invalidateSelf();
  }

  Future<void> deleteAccount(int accountId) async {
    await ref.read(walletRepositoryProvider).deletePayoutAccount(accountId);
    ref.invalidateSelf();
  }
}

final payoutAccountsProvider =
    AsyncNotifierProvider<PayoutAccountsNotifier, List<PayoutAccount>>(PayoutAccountsNotifier.new);

class PayoutTransactionsResult {
  const PayoutTransactionsResult({
    required this.transactions,
    required this.hasMore,
    required this.page,
  });

  final List<PayoutTransaction> transactions;
  final bool hasMore;
  final int page;
}

class PayoutTransactionsNotifier extends AsyncNotifier<PayoutTransactionsResult> {
  @override
  Future<PayoutTransactionsResult> build() async {
    final page = await ref.read(walletRepositoryProvider).fetchPayoutTransactions();
    return PayoutTransactionsResult(
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
        .fetchPayoutTransactions(page: current.page + 1);

    state = AsyncValue.data(PayoutTransactionsResult(
      transactions: [...current.transactions, ...next.data],
      hasMore: next.hasMore,
      page: next.currentPage,
    ));
  }

  void refresh() => ref.invalidateSelf();
}

final payoutTransactionsProvider =
    AsyncNotifierProvider<PayoutTransactionsNotifier, PayoutTransactionsResult>(
  PayoutTransactionsNotifier.new,
);

class PayoutActionsNotifier extends Notifier<AsyncValue<void>> {
  @override
  AsyncValue<void> build() => const AsyncValue.data(null);

  Future<void> requestPayout({required double amount, required int payoutAccountId}) =>
      _run(() async {
        await ref
            .read(walletRepositoryProvider)
            .requestPayout(amount: amount, payoutAccountId: payoutAccountId);
        ref.invalidate(payoutTransactionsProvider);
      });

  Future<void> cancelPayout(int payoutId) => _run(() async {
        await ref.read(walletRepositoryProvider).cancelPayout(payoutId);
        ref.invalidate(payoutTransactionsProvider);
      });

  Future<void> _run(Future<void> Function() action) async {
    state = const AsyncValue.loading();
    try {
      await action();
      state = const AsyncValue.data(null);
    } catch (error, stackTrace) {
      state = AsyncValue.error(error, stackTrace);
      rethrow;
    }
  }
}

final payoutActionsProvider =
    NotifierProvider<PayoutActionsNotifier, AsyncValue<void>>(PayoutActionsNotifier.new);
