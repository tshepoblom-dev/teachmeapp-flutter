import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/utils/money_formatter.dart';
import '../../../../core/widgets/app_button.dart';
import '../../../../core/widgets/app_text_field.dart';
import '../../../../core/widgets/error_view.dart';
import '../../domain/payment_method.dart';
import '../../domain/payment_transaction.dart';
import '../providers/payment_provider.dart';
import '../providers/wallet_provider.dart';
import '../widgets/payment_method_tile.dart';
import 'payment_webview_screen.dart';

class TopUpScreen extends ConsumerStatefulWidget {
  const TopUpScreen({super.key});

  @override
  ConsumerState<TopUpScreen> createState() => _TopUpScreenState();
}

class _TopUpScreenState extends ConsumerState<TopUpScreen> {
  static const _defaultMinAmount = 10.0;

  final _amountController = TextEditingController();
  String? _selectedMethodCode;
  bool _isSubmitting = false;

  @override
  void dispose() {
    _amountController.dispose();
    super.dispose();
  }

  /// The gateway callback URL is reached whether the payment succeeded or
  /// failed, so `PaymentWebviewResult.completed` only means "the flow
  /// finished" — check the actual transaction status for a precise message.
  Future<String> _resolveOutcomeMessage(int transactionId) async {
    const fallback = 'Payment submitted. We will confirm it shortly.';
    try {
      final page = await ref.read(walletRepositoryProvider).fetchPaymentTransactions();
      PaymentTransaction? transaction;
      for (final t in page.data) {
        if (t.id == transactionId) {
          transaction = t;
          break;
        }
      }
      if (transaction == null) return fallback;
      switch (transaction.status) {
        case 'failed':
          final gatewayStatus = transaction.gatewayStatus;
          return 'Payment failed${gatewayStatus != null ? ' ($gatewayStatus)' : ''}. Please try again.';
        case 'completed':
          return 'Payment successful.';
        default:
          return fallback;
      }
    } catch (_) {
      return fallback;
    }
  }

  PaymentMethod? _selectedMethod(List<PaymentMethod> depositMethods) {
    if (_selectedMethodCode == null) return null;
    for (final method in depositMethods) {
      if (method.code == _selectedMethodCode) return method;
    }
    return null;
  }

  Future<void> _submit(List<PaymentMethod> depositMethods) async {
    final method = _selectedMethod(depositMethods);
    if (method == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Select a payment method.')),
      );
      return;
    }

    final minAmount = method.minAmount ?? _defaultMinAmount;
    final amount = double.tryParse(_amountController.text.trim());
    if (amount == null || amount < minAmount) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Enter an amount of at least ${MoneyFormatter.format(minAmount)}.')),
      );
      return;
    }
    final maxAmount = method.maxAmount;
    if (maxAmount != null && amount > maxAmount) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Enter an amount of at most ${MoneyFormatter.format(maxAmount)}.')),
      );
      return;
    }
    final methodCode = method.code;

    setState(() => _isSubmitting = true);
    try {
      final initiation = await ref
          .read(paymentActionsProvider.notifier)
          .deposit(amount: amount, paymentMethod: methodCode);

      if (!mounted) return;

      if (initiation.gatewayResponse.redirectUrl != null) {
        final result = await Navigator.of(context).push<PaymentWebviewResult>(
          MaterialPageRoute(
            builder: (_) => PaymentWebviewScreen(gatewayResponse: initiation.gatewayResponse),
          ),
        );
        if (!mounted) return;
        ref.read(walletProvider.notifier).refresh();
        ref.read(walletTransactionsProvider.notifier).refresh();
        if (result == PaymentWebviewResult.completed) {
          final message = await _resolveOutcomeMessage(initiation.transaction.id);
          if (!mounted) return;
          Navigator.of(context).pop();
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
        }
      } else {
        ref.read(walletProvider.notifier).refresh();
        Navigator.of(context).pop();
      }
    } catch (error) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(Failure.fromError(error).message)),
        );
      }
    } finally {
      if (mounted) setState(() => _isSubmitting = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final methods = ref.watch(paymentMethodsProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Top up wallet')),
      body: methods.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, _) => ErrorView(
          failure: Failure.fromError(error),
          onRetry: () => ref.invalidate(paymentMethodsProvider),
        ),
        data: (allMethods) {
          final depositMethods =
              allMethods.where((m) => m.isActive && m.code != 'wallet_balance').toList();
          _selectedMethodCode ??= depositMethods.isNotEmpty ? depositMethods.first.code : null;
          final selectedMethod = _selectedMethod(depositMethods);
          final minAmount = selectedMethod?.minAmount ?? _defaultMinAmount;
          final maxAmount = selectedMethod?.maxAmount;

          return SafeArea(
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: [
                AppTextField(
                  label: 'Amount (ZAR)',
                  controller: _amountController,
                  keyboardType: const TextInputType.numberWithOptions(decimal: true),
                ),
                const SizedBox(height: 8),
                Text(
                  'Minimum top-up: ${MoneyFormatter.format(minAmount)}',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                if (maxAmount != null)
                  Text(
                    'Maximum top-up: ${MoneyFormatter.format(maxAmount)}',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                const SizedBox(height: 16),
                Text('Payment method', style: Theme.of(context).textTheme.titleSmall),
                ...depositMethods.map((method) => PaymentMethodTile(
                      method: method,
                      isSelected: _selectedMethodCode == method.code,
                      onTap: () => setState(() => _selectedMethodCode = method.code),
                    )),
                const SizedBox(height: 24),
                AppButton(
                  label: 'Continue',
                  isLoading: _isSubmitting,
                  onPressed: _isSubmitting ? null : () => _submit(depositMethods),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
