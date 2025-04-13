import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTextStyles {
  static const TextStyle headlineLarge = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
    color: ApplicationColors.textPrimary,
  );

  static const TextStyle headlineMedium = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: ApplicationColors.textPrimary,
  );

  static const TextStyle bodyLarge = TextStyle(
    fontSize: 18,
    color: ApplicationColors.textSecondary,
  );

  static const TextStyle bodyMedium = TextStyle(
    fontSize: 16,
    color: ApplicationColors.textTertiary,
  );

  static const TextStyle buttonText = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 16,
  );
}
