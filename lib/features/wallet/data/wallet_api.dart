import 'package:dio/dio.dart';

import '../../../core/network/api_endpoints.dart';

/// Raw Dio calls for the wallet/payment/payout domain. Verified against
/// `WalletController`/`PaymentController`/`PayoutController` source:
///   - `wallet/transactions`, `payment/transactions`, `payout/transactions`
///     each call `Resource::collection($items)->response()->getData(true)`
///     before being passed to `success()`, so they're DOUBLE-wrapped:
///     `{success,message,data:{data:[...],links,meta}}`.
///   - `wallet` (the base endpoint) builds a plain assoc array and passes it
///     straight to `success()` — single-wrapped: `{success,message,data:{...}}`.
///   - `payment/methods`/`payout/accounts` pass a plain array/Collection
///     directly — single-wrapped: `{success,message,data:[...]}`.
///   - everything else (deposit/payBooking/callback/payout account
///     CRUD/payout request/cancel) passes a single Resource or plain array
///     directly — single-wrapped: `{success,message,data:{...}}`.
class WalletApi {
  WalletApi(this._dio);

  final Dio _dio;

  Future<Map<String, dynamic>> fetchWallet() async {
    final response = await _dio.get(ApiEndpoints.wallet);
    return response.data as Map<String, dynamic>;
  }

  Future<Map<String, dynamic>> fetchWalletTransactions({int page = 1}) async {
    final response = await _dio.get(
      ApiEndpoints.walletTransactions,
      queryParameters: {'page': page},
    );
    return response.data as Map<String, dynamic>;
  }

  Future<Map<String, dynamic>> fetchPaymentMethods() async {
    final response = await _dio.get(ApiEndpoints.paymentMethods);
    return response.data as Map<String, dynamic>;
  }

  Future<Map<String, dynamic>> deposit({
    required double amount,
    required String paymentMethod,
  }) async {
    final response = await _dio.post(ApiEndpoints.paymentDeposit, data: {
      'amount': amount,
      'payment_method': paymentMethod,
    });
    return response.data as Map<String, dynamic>;
  }

  Future<Map<String, dynamic>> payForBooking({
    required int bookingId,
    required String paymentMethod,
  }) async {
    final response = await _dio.post(
      ApiEndpoints.paymentBooking(bookingId),
      data: {'payment_method': paymentMethod},
    );
    return response.data as Map<String, dynamic>;
  }

  Future<Map<String, dynamic>> fetchPaymentTransactions({int page = 1}) async {
    final response = await _dio.get(
      ApiEndpoints.paymentTransactions,
      queryParameters: {'page': page},
    );
    return response.data as Map<String, dynamic>;
  }

  Future<Map<String, dynamic>> fetchPayoutAccounts() async {
    final response = await _dio.get(ApiEndpoints.payoutAccounts);
    return response.data as Map<String, dynamic>;
  }

  Future<Map<String, dynamic>> createPayoutAccount(Map<String, dynamic> payload) async {
    final response = await _dio.post(ApiEndpoints.payoutAccounts, data: payload);
    return response.data as Map<String, dynamic>;
  }

  Future<Map<String, dynamic>> setDefaultPayoutAccount(int accountId) async {
    final response = await _dio.post(ApiEndpoints.payoutAccountDefault(accountId));
    return response.data as Map<String, dynamic>;
  }

  Future<void> deletePayoutAccount(int accountId) async {
    await _dio.delete(ApiEndpoints.payoutAccount(accountId));
  }

  Future<Map<String, dynamic>> fetchPayoutTransactions({int page = 1}) async {
    final response = await _dio.get(
      ApiEndpoints.payoutTransactions,
      queryParameters: {'page': page},
    );
    return response.data as Map<String, dynamic>;
  }

  Future<Map<String, dynamic>> requestPayout({
    required double amount,
    required int payoutAccountId,
  }) async {
    final response = await _dio.post(ApiEndpoints.payoutRequest, data: {
      'amount': amount,
      'payout_account_id': payoutAccountId,
    });
    return response.data as Map<String, dynamic>;
  }

  Future<Map<String, dynamic>> cancelPayout(int payoutId) async {
    final response = await _dio.post(ApiEndpoints.payoutCancel(payoutId));
    return response.data as Map<String, dynamic>;
  }
}
