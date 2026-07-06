import 'package:flutter/material.dart';
import 'app_colors.dart';

@Deprecated('Use Theme.of(context).textTheme instead — it now carries these same brand styles.')
class AppTextStyles {
  const AppTextStyles._();

  static const heading = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w700,
    color: AppColors.navy,
  );

  static const subheading = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.navy,
  );

  static const body = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.navy,
  );

  static const caption = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: AppColors.onSurfaceVariant,
  );
}
