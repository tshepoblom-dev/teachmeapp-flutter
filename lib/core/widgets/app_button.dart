import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.isLoading = false,
    this.outlined = false,
  });

  final String label;
  final VoidCallback? onPressed;
  final bool isLoading;
  final bool outlined;

  @override
  Widget build(BuildContext context) {
    final child = isLoading
        ? const SizedBox(
            height: 20,
            width: 20,
            child: CircularProgressIndicator(strokeWidth: 2, color: Colors.white),
          )
        : Text(label);

    final effectiveOnPressed = isLoading ? null : onPressed;

    return SizedBox(
      width: double.infinity,
      child: outlined
          ? OutlinedButton(onPressed: effectiveOnPressed, child: child)
          : ElevatedButton(onPressed: effectiveOnPressed, child: child),
    );
  }
}
