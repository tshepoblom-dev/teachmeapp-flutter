import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/payment_method.dart';
import '../../domain/payment_transaction.dart';
import 'wallet_provider.dart';

final paymentMethodsProvider = FutureProvider<List<PaymentMethod>>((ref) {
  return ref.read(walletRepositoryProvider).fetchPaymentMethods();
});

class PaymentActionsNotifier extends Notifier<AsyncValue<void>> {
  @override
  AsyncValue<void> build() => const AsyncValue.data(null);

  Future<PaymentInitiation> deposit({required double amount, required String paymentMethod}) async {
    state = const AsyncValue.loading();
    try {
      final result =
          await ref.read(walletRepositoryProvider).deposit(amount: amount, paymentMethod: paymentMethod);
      state = const AsyncValue.data(null);
      return result;
    } catch (error, stackTrace) {
      state = AsyncValue.error(error, stackTrace);
      rethrow;
    }
  }

  Future<PaymentInitiation> payForBooking({
    required int bookingId,
    required String paymentMethod,
  }) async {
    state = const AsyncValue.loading();
    try {
      final result = await ref
          .read(walletRepositoryProvider)
          .payForBooking(bookingId: bookingId, paymentMethod: paymentMethod);
      state = const AsyncValue.data(null);
      return result;
    } catch (error, stackTrace) {
      state = AsyncValue.error(error, stackTrace);
      rethrow;
    }
  }
}

final paymentActionsProvider =
    NotifierProvider<PaymentActionsNotifier, AsyncValue<void>>(PaymentActionsNotifier.new);

class PaymentTransactionsResult {
  const PaymentTransactionsResult({
    required this.transactions,
    required this.hasMore,
    required this.page,
  });

  final List<PaymentTransaction> transactions;
  final bool hasMore;
  final int page;
}

class PaymentTransactionsNotifier extends AsyncNotifier<PaymentTransactionsResult> {
  @override
  Future<PaymentTransactionsResult> build() async {
    final page = await ref.read(walletRepositoryProvider).fetchPaymentTransactions();
    return PaymentTransactionsResult(
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
        .fetchPaymentTransactions(page: current.page + 1);

    state = AsyncValue.data(PaymentTransactionsResult(
      transactions: [...current.transactions, ...next.data],
      hasMore: next.hasMore,
      page: next.currentPage,
    ));
  }

  void refresh() => ref.invalidateSelf();
}

final paymentTransactionsProvider =
    AsyncNotifierProvider<PaymentTransactionsNotifier, PaymentTransactionsResult>(
  PaymentTransactionsNotifier.new,
);
