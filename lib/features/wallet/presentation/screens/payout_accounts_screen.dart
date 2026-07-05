import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/widgets/app_button.dart';
import '../../../../core/widgets/app_text_field.dart';
import '../../../../core/widgets/empty_state.dart';
import '../../../../core/widgets/error_view.dart';
import '../../domain/payout_account.dart';
import '../providers/payout_provider.dart';

class PayoutAccountsScreen extends ConsumerWidget {
  const PayoutAccountsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final accounts = ref.watch(payoutAccountsProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Payout accounts'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () => showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              builder: (_) => const _AddPayoutAccountSheet(),
            ),
          ),
        ],
      ),
      body: accounts.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, _) => ErrorView(
          failure: Failure.fromError(error),
          onRetry: () => ref.invalidate(payoutAccountsProvider),
        ),
        data: (items) {
          if (items.isEmpty) {
            return const EmptyState(
              message: 'No payout accounts yet. Add one to request a withdrawal.',
              icon: Icons.account_balance_outlined,
            );
          }
          return ListView(
            padding: const EdgeInsets.all(16),
            children: items.map((account) => _AccountCard(account: account)).toList(),
          );
        },
      ),
    );
  }
}

class _AccountCard extends ConsumerWidget {
  const _AccountCard({required this.account});

  final PayoutAccount account;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        title: Text(account.holderName),
        subtitle: Text([
          account.accountType,
          if (account.bankName != null) account.bankName!,
          account.isVerified ? 'Verified' : 'Pending verification',
        ].join(' · ')),
        leading: Icon(account.isDefault ? Icons.star : Icons.star_border),
        trailing: PopupMenuButton<String>(
          onSelected: (action) async {
            try {
              if (action == 'default') {
                await ref.read(payoutAccountsProvider.notifier).setDefault(account.id);
              } else if (action == 'delete') {
                await ref.read(payoutAccountsProvider.notifier).deleteAccount(account.id);
              }
            } catch (error) {
              if (context.mounted) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(Failure.fromError(error).message)),
                );
              }
            }
          },
          itemBuilder: (context) => [
            if (!account.isDefault)
              const PopupMenuItem(value: 'default', child: Text('Set as default')),
            const PopupMenuItem(value: 'delete', child: Text('Remove')),
          ],
        ),
      ),
    );
  }
}

class _AddPayoutAccountSheet extends ConsumerStatefulWidget {
  const _AddPayoutAccountSheet();

  @override
  ConsumerState<_AddPayoutAccountSheet> createState() => _AddPayoutAccountSheetState();
}

class _AddPayoutAccountSheetState extends ConsumerState<_AddPayoutAccountSheet> {
  String _accountType = 'bank';
  final _holderNameController = TextEditingController();
  final _accountNumberController = TextEditingController();
  final _branchCodeController = TextEditingController();
  final _bankNameController = TextEditingController();
  bool _isSubmitting = false;

  @override
  void dispose() {
    _holderNameController.dispose();
    _accountNumberController.dispose();
    _branchCodeController.dispose();
    _bankNameController.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    if (_holderNameController.text.trim().isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Enter the account holder name.')),
      );
      return;
    }
    if (_accountType == 'bank' &&
        (_accountNumberController.text.trim().isEmpty ||
            _branchCodeController.text.trim().isEmpty ||
            _bankNameController.text.trim().isEmpty)) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Bank accounts require an account number, branch code, and bank name.')),
      );
      return;
    }

    setState(() => _isSubmitting = true);
    try {
      await ref.read(payoutAccountsProvider.notifier).createAccount(
            accountType: _accountType,
            accountHolderName: _holderNameController.text.trim(),
            accountNumber:
                _accountNumberController.text.trim().isEmpty ? null : _accountNumberController.text.trim(),
            branchCode: _branchCodeController.text.trim().isEmpty ? null : _branchCodeController.text.trim(),
            bankName: _bankNameController.text.trim().isEmpty ? null : _bankNameController.text.trim(),
          );
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
            Text('Add payout account', style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 12),
            DropdownButtonFormField<String>(
              value: _accountType,
              decoration: const InputDecoration(labelText: 'Account type'),
              items: const [
                DropdownMenuItem(value: 'bank', child: Text('Bank account')),
                DropdownMenuItem(value: 'payfast', child: Text('PayFast')),
                DropdownMenuItem(value: 'paypal', child: Text('PayPal')),
              ],
              onChanged: (value) {
                if (value != null) setState(() => _accountType = value);
              },
            ),
            const SizedBox(height: 8),
            AppTextField(label: 'Account holder name', controller: _holderNameController),
            if (_accountType == 'bank') ...[
              const SizedBox(height: 8),
              AppTextField(label: 'Bank name', controller: _bankNameController),
              const SizedBox(height: 8),
              AppTextField(label: 'Account number', controller: _accountNumberController),
              const SizedBox(height: 8),
              AppTextField(
                label: 'Branch code',
                controller: _branchCodeController,
                keyboardType: TextInputType.number,
              ),
            ],
            const SizedBox(height: 16),
            AppButton(
              label: 'Save account',
              isLoading: _isSubmitting,
              onPressed: _isSubmitting ? null : _submit,
            ),
          ],
        ),
      ),
    );
  }
}
