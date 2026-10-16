import 'package:flutter/material.dart';

import '../../domain/payment_method.dart';

class PaymentMethodTile extends StatelessWidget {
  const PaymentMethodTile({
    super.key,
    required this.method,
    required this.isSelected,
    required this.onTap,
  });

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
