import 'package:dio/dio.dart';

import '../../../core/network/api_exception.dart';
import '../../../core/network/paginated_response.dart';
import '../domain/payment_method.dart';
import '../domain/payment_transaction.dart';
import '../domain/payout_account.dart';
import '../domain/payout_transaction.dart';
import '../domain/wallet.dart';
import '../domain/wallet_transaction.dart';
import 'wallet_api.dart';

class WalletRepository {
  WalletRepository(this._api);

  final WalletApi _api;

  Future<Wallet> fetchWallet() async {
    try {
      final body = await _api.fetchWallet();
      return Wallet.fromJson(body['data'] as Map<String, dynamic>);
    } on DioException catch (e) {
      throw e.toAppException();
    }
  }

  /// `GET /wallet/transactions` — double-wrapped paginator.
  Future<PaginatedResponse<WalletTransaction>> fetchWalletTransactions({int page = 1}) async {
    try {
      final body = await _api.fetchWalletTransactions(page: page);
      final wrapper = body['data'] as Map<String, dynamic>;
      return PaginatedResponse<WalletTransaction>.fromJson(wrapper, WalletTransaction.fromJson);
    } on DioException catch (e) {
      throw e.toAppException();
    }
  }

  Future<List<PaymentMethod>> fetchPaymentMethods() async {
    try {
      final body = await _api.fetchPaymentMethods();
      final items = (body['data'] as List).cast<Map<String, dynamic>>();
      return items.map(PaymentMethod.fromJson).toList();
    } on DioException catch (e) {
      throw e.toAppException();
    }
  }

  Future<PaymentInitiation> deposit({
    required double amount,
    required String paymentMethod,
  }) async {
    try {
      final body = await _api.deposit(amount: amount, paymentMethod: paymentMethod);
      return PaymentInitiation.fromJson(body['data'] as Map<String, dynamic>);
    } on DioException catch (e) {
      throw e.toAppException();
    }
  }

  Future<PaymentInitiation> payForBooking({
    required int bookingId,
    required String paymentMethod,
  }) async {
    try {
      final body = await _api.payForBooking(bookingId: bookingId, paymentMethod: paymentMethod);
      return PaymentInitiation.fromJson(body['data'] as Map<String, dynamic>);
    } on DioException catch (e) {
      throw e.toAppException();
    }
  }

  /// `GET /payment/transactions` — double-wrapped paginator.
  Future<PaginatedResponse<PaymentTransaction>> fetchPaymentTransactions({int page = 1}) async {
    try {
      final body = await _api.fetchPaymentTransactions(page: page);
      final wrapper = body['data'] as Map<String, dynamic>;
      return PaginatedResponse<PaymentTransaction>.fromJson(wrapper, PaymentTransaction.fromJson);
    } on DioException catch (e) {
      throw e.toAppException();
    }
  }

  Future<List<PayoutAccount>> fetchPayoutAccounts() async {
    try {
      final body = await _api.fetchPayoutAccounts();
      final items = (body['data'] as List).cast<Map<String, dynamic>>();
      return items.map(PayoutAccount.fromJson).toList();
    } on DioException catch (e) {
      throw e.toAppException();
    }
  }

  Future<PayoutAccount> createPayoutAccount({
    required String accountType,
    required String accountHolderName,
    String? accountNumber,
    String? branchCode,
    String? bankName,
    bool isDefault = false,
  }) async {
    try {
      final body = await _api.createPayoutAccount({
        'account_type': accountType,
        'account_holder_name': accountHolderName,
        if (accountNumber != null) 'account_number': accountNumber,
        if (branchCode != null) 'branch_code': branchCode,
        if (bankName != null) 'bank_name': bankName,
        'is_default': isDefault,
      });
      return PayoutAccount.fromJson(body['data'] as Map<String, dynamic>);
    } on DioException catch (e) {
      throw e.toAppException();
    }
  }

  Future<PayoutAccount> setDefaultPayoutAccount(int accountId) async {
    try {
      final body = await _api.setDefaultPayoutAccount(accountId);
      return PayoutAccount.fromJson(body['data'] as Map<String, dynamic>);
    } on DioException catch (e) {
      throw e.toAppException();
    }
  }

  Future<void> deletePayoutAccount(int accountId) async {
    try {
      await _api.deletePayoutAccount(accountId);
    } on DioException catch (e) {
      throw e.toAppException();
    }
  }

  /// `GET /payout/transactions` — double-wrapped paginator.
  Future<PaginatedResponse<PayoutTransaction>> fetchPayoutTransactions({int page = 1}) async {
    try {
      final body = await _api.fetchPayoutTransactions(page: page);
      final wrapper = body['data'] as Map<String, dynamic>;
      return PaginatedResponse<PayoutTransaction>.fromJson(wrapper, PayoutTransaction.fromJson);
    } on DioException catch (e) {
      throw e.toAppException();
    }
  }

  Future<PayoutTransaction> requestPayout({
    required double amount,
    required int payoutAccountId,
  }) async {
    try {
      final body = await _api.requestPayout(amount: amount, payoutAccountId: payoutAccountId);
      return PayoutTransaction.fromJson(body['data'] as Map<String, dynamic>);
    } on DioException catch (e) {
      throw e.toAppException();
    }
  }

  Future<PayoutTransaction> cancelPayout(int payoutId) async {
    try {
      final body = await _api.cancelPayout(payoutId);
      return PayoutTransaction.fromJson(body['data'] as Map<String, dynamic>);
    } on DioException catch (e) {
      throw e.toAppException();
    }
  }
}
