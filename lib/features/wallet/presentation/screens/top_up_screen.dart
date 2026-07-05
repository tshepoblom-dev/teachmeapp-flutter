import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/utils/money_formatter.dart';
import '../../../../core/widgets/app_button.dart';
import '../../../../core/widgets/app_text_field.dart';
import '../../../../core/widgets/error_view.dart';
import '../../domain/payment_method.dart';
import '../providers/payment_provider.dart';
import '../providers/wallet_provider.dart';
import 'payment_webview_screen.dart';

class TopUpScreen extends ConsumerStatefulWidget {
  const TopUpScreen({super.key});

  @override
  ConsumerState<TopUpScreen> createState() => _TopUpScreenState();
}

class _TopUpScreenState extends ConsumerState<TopUpScreen> {
  final _amountController = TextEditingController();
  String? _selectedMethodCode;
  bool _isSubmitting = false;

  @override
  void dispose() {
    _amountController.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    final amount = double.tryParse(_amountController.text.trim());
    if (amount == null || amount < 10) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Enter an amount of at least R10.')),
      );
      return;
    }
    final methodCode = _selectedMethodCode;
    if (methodCode == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Select a payment method.')),
      );
      return;
    }

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
          Navigator.of(context).pop();
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Payment submitted. We will confirm it shortly.')),
          );
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
                  'Minimum top-up: ${MoneyFormatter.format(10)}',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                const SizedBox(height: 16),
                Text('Payment method', style: Theme.of(context).textTheme.titleSmall),
                ...depositMethods.map((method) => _MethodTile(
                      method: method,
                      isSelected: _selectedMethodCode == method.code,
                      onTap: () => setState(() => _selectedMethodCode = method.code),
                    )),
                const SizedBox(height: 24),
                AppButton(
                  label: 'Continue',
                  isLoading: _isSubmitting,
                  onPressed: _isSubmitting ? null : _submit,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class _MethodTile extends StatelessWidget {
  const _MethodTile({required this.method, required this.isSelected, required this.onTap});

  final PaymentMethod method;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return RadioListTile<bool>(
      value: true,
      groupValue: isSelected ? true : null,
      onChanged: (_) => onTap(),
      title: Text(method.name),
      subtitle: method.description != null ? Text(method.description!) : null,
    );
  }
}
