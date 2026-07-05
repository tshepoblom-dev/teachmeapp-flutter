import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/utils/date_time_formatter.dart';
import '../../../../core/utils/money_formatter.dart';
import '../../../../core/widgets/app_button.dart';
import '../../../../core/widgets/empty_state.dart';
import '../../../../core/widgets/error_view.dart';
import '../../domain/wallet_transaction.dart';
import '../providers/wallet_provider.dart';
import 'top_up_screen.dart';

class WalletScreen extends ConsumerWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final wallet = ref.watch(walletProvider);
    final transactions = ref.watch(walletTransactionsProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Wallet')),
      body: wallet.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, _) => ErrorView(
          failure: Failure.fromError(error),
          onRetry: () => ref.read(walletProvider.notifier).refresh(),
        ),
        data: (data) {
          return RefreshIndicator(
            onRefresh: () async {
              ref.read(walletProvider.notifier).refresh();
              ref.read(walletTransactionsProvider.notifier).refresh();
            },
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: [
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Available balance', style: Theme.of(context).textTheme.bodyMedium),
                        Text(
                          MoneyFormatter.format(data.balance),
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                        if (data.escrowBalance > 0) ...[
                          const SizedBox(height: 8),
                          Text('In escrow: ${MoneyFormatter.format(data.escrowBalance)}'),
                        ],
                        const SizedBox(height: 16),
                        AppButton(
                          label: 'Top up',
                          onPressed: () => Navigator.of(context).push(
                            MaterialPageRoute(builder: (_) => const TopUpScreen()),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                Text('Transaction history', style: Theme.of(context).textTheme.titleMedium),
                const SizedBox(height: 8),
                transactions.when(
                  loading: () => const Padding(
                    padding: EdgeInsets.symmetric(vertical: 24),
                    child: Center(child: CircularProgressIndicator()),
                  ),
                  error: (error, _) => ErrorView(failure: Failure.fromError(error)),
                  data: (txData) {
                    if (txData.transactions.isEmpty) {
                      return const EmptyState(
                        message: 'No transactions yet.',
                        icon: Icons.receipt_long_outlined,
                      );
                    }
                    return Column(
                      children: [
                        for (final tx in txData.transactions) _TransactionTile(transaction: tx),
                        if (txData.hasMore)
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            child: TextButton(
                              onPressed: () =>
                                  ref.read(walletTransactionsProvider.notifier).loadMore(),
                              child: const Text('Load more'),
                            ),
                          ),
                      ],
                    );
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class _TransactionTile extends StatelessWidget {
  const _TransactionTile({required this.transaction});

  final WalletTransaction transaction;

  @override
  Widget build(BuildContext context) {
    final isCredit = transaction.isCredit;
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Icon(
        isCredit ? Icons.arrow_downward : Icons.arrow_upward,
        color: isCredit ? Colors.green : Colors.redAccent,
      ),
      title: Text(transaction.description ?? transaction.type.replaceAll('_', ' ')),
      subtitle: Text(DateTimeFormatter.dateTimeLabel(transaction.createdAt)),
      trailing: Text(
        '${isCredit ? '+' : '-'}${MoneyFormatter.format(transaction.amount)}',
        style: TextStyle(
          color: isCredit ? Colors.green : Colors.redAccent,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
