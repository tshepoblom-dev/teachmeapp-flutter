import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/utils/date_time_formatter.dart';
import '../../../../core/utils/money_formatter.dart';
import '../../../../core/widgets/app_button.dart';
import '../../../../core/widgets/app_text_field.dart';
import '../../../../core/widgets/empty_state.dart';
import '../../../../core/widgets/error_view.dart';
import '../../domain/payout_account.dart';
import '../../domain/payout_transaction.dart';
import '../providers/payout_provider.dart';
import 'payout_accounts_screen.dart';

class PayoutsScreen extends ConsumerWidget {
  const PayoutsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final transactions = ref.watch(payoutTransactionsProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Payouts'),
        actions: [
          IconButton(
            icon: const Icon(Icons.account_balance_outlined),
            tooltip: 'Manage payout accounts',
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (_) => const PayoutAccountsScreen()),
            ),
          ),
        ],
      ),
      body: transactions.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, _) => ErrorView(
          failure: Failure.fromError(error),
          onRetry: () => ref.invalidate(payoutTransactionsProvider),
        ),
        data: (data) {
          return RefreshIndicator(
            onRefresh: () async => ref.invalidate(payoutTransactionsProvider),
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: [
                AppButton(
                  label: 'Request a payout',
                  onPressed: () => showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    builder: (_) => const _RequestPayoutSheet(),
                  ),
                ),
                const SizedBox(height: 24),
                Text('History', style: Theme.of(context).textTheme.titleMedium),
                const SizedBox(height: 8),
                if (data.transactions.isEmpty)
                  const EmptyState(
                    message: 'No payout requests yet.',
                    icon: Icons.payments_outlined,
                  )
                else ...[
                  for (final tx in data.transactions) _PayoutTile(transaction: tx),
                  if (data.hasMore)
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      child: TextButton(
                        onPressed: () => ref.read(payoutTransactionsProvider.notifier).loadMore(),
                        child: const Text('Load more'),
                      ),
                    ),
                ],
              ],
            ),
          );
        },
      ),
    );
  }
}

class _PayoutTile extends ConsumerWidget {
  const _PayoutTile({required this.transaction});

  final PayoutTransaction transaction;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        title: Text(MoneyFormatter.format(transaction.amount)),
        subtitle: Text([
          transaction.account ?? transaction.reference,
          transaction.status.replaceAll('_', ' '),
          DateTimeFormatter.dateTimeLabel(transaction.createdAt),
          if (transaction.failureReason != null) transaction.failureReason!,
        ].join(' · ')),
        trailing: transaction.isCancellable
            ? TextButton(
                onPressed: () async {
                  try {
                    await ref.read(payoutActionsProvider.notifier).cancelPayout(transaction.id);
                  } catch (error) {
                    if (context.mounted) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text(Failure.fromError(error).message)),
                      );
                    }
                  }
                },
                child: const Text('Cancel'),
              )
            : null,
      ),
    );
  }
}

class _RequestPayoutSheet extends ConsumerStatefulWidget {
  const _RequestPayoutSheet();

  @override
  ConsumerState<_RequestPayoutSheet> createState() => _RequestPayoutSheetState();
}

class _RequestPayoutSheetState extends ConsumerState<_RequestPayoutSheet> {
  final _amountController = TextEditingController();
  int? _selectedAccountId;
  bool _isSubmitting = false;

  @override
  void dispose() {
    _amountController.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    final amount = double.tryParse(_amountController.text.trim());
    if (amount == null || amount < 50) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Minimum payout amount is R50.')),
      );
      return;
    }
    final accountId = _selectedAccountId;
    if (accountId == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Select a payout account.')),
      );
      return;
    }

    setState(() => _isSubmitting = true);
    try {
      await ref
          .read(payoutActionsProvider.notifier)
          .requestPayout(amount: amount, payoutAccountId: accountId);
      if (mounted) Navigator.of(context).pop();
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
    final accounts = ref.watch(payoutAccountsProvider);

    return Padding(
      padding: EdgeInsets.only(
        left: 16,
        right: 16,
        top: 16,
        bottom: MediaQuery.of(context).viewInsets.bottom + 16,
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Request a payout', style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 12),
            AppTextField(
              label: 'Amount (ZAR)',
              controller: _amountController,
              keyboardType: const TextInputType.numberWithOptions(decimal: true),
            ),
            const SizedBox(height: 8),
            accounts.when(
              loading: () => const Padding(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: Center(child: CircularProgressIndicator()),
              ),
              error: (error, _) => Text(Failure.fromError(error).message),
              data: (items) {
                if (items.isEmpty) {
                  return const Text('Add a payout account first to request a withdrawal.');
                }
                _selectedAccountId ??= items.firstWhere(
                  (a) => a.isDefault,
                  orElse: () => items.first,
                ).id;
                return DropdownButtonFormField<int>(
                  value: _selectedAccountId,
                  decoration: const InputDecoration(labelText: 'Payout account'),
                  items: items
                      .map((PayoutAccount a) => DropdownMenuItem(
                            value: a.id,
                            child: Text('${a.holderName} (${a.accountType})'),
                          ))
                      .toList(),
                  onChanged: (value) => setState(() => _selectedAccountId = value),
                );
              },
            ),
            const SizedBox(height: 16),
            AppButton(
              label: 'Submit request',
              isLoading: _isSubmitting,
              onPressed: _isSubmitting ? null : _submit,
            ),
          ],
        ),
      ),
    );
  }
}
