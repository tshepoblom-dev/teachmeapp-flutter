import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

/// Shown while [authBootstrapProvider] reads the stored token on cold start.
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.background,
      body: Center(
        child: CircularProgressIndicator(color: AppColors.green),
      ),
    );
  }
}
