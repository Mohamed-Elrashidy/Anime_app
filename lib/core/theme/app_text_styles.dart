import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTextStyles {
  AppTextStyles._();

  // Display Text Styles
  static const TextStyle font32W700TextPrimary = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.bold,
    height: 1.2,
    color: AppColors.textPrimary,
  );

  static const TextStyle font28W700TextPrimary = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.bold,
    height: 1.3,
    color: AppColors.textPrimary,
  );

  static const TextStyle font24W600TextPrimary = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    height: 1.3,
    color: AppColors.textPrimary,
  );

  // Headline Text Styles
  static const TextStyle font22W600TextPrimary = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w600,
    height: 1.4,
    color: AppColors.textPrimary,
  );

  static const TextStyle font20W600TextPrimary = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    height: 1.4,
    color: AppColors.textPrimary,
  );

  static const TextStyle font18W600TextPrimary = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    height: 1.4,
    color: AppColors.textPrimary,
  );

  // Title Text Styles
  static const TextStyle font16W600TextPrimary = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    height: 1.5,
    color: AppColors.textPrimary,
  );

  static const TextStyle font14W600TextPrimary = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    height: 1.5,
    color: AppColors.textPrimary,
  );

  static const TextStyle font12W600TextPrimary = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w600,
    height: 1.5,
    color: AppColors.textPrimary,
  );

  // Body Text Styles
  static const TextStyle font16W400TextPrimary = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    height: 1.6,
    color: AppColors.textPrimary,
  );

  static const TextStyle font14W400TextSecondary = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    height: 1.6,
    color: AppColors.textSecondary,
  );

  static const TextStyle font12W400TextSecondary = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.normal,
    height: 1.6,
    color: AppColors.textSecondary,
  );

  // Label Text Styles
  static const TextStyle font14W500TextPrimary = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    height: 1.4,
    color: AppColors.textPrimary,
  );

  static const TextStyle font12W500TextSecondary = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    height: 1.4,
    color: AppColors.textSecondary,
  );

  static const TextStyle font10W500TextTertiary = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w500,
    height: 1.4,
    color: AppColors.textTertiary,
  );

  // Button Text Styles
  static const TextStyle font16W600TextOnPrimary = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    height: 1.2,
    color: AppColors.textOnPrimary,
  );

  static const TextStyle font14W600TextOnPrimary = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    height: 1.2,
    color: AppColors.textOnPrimary,
  );

  static const TextStyle font12W600TextOnPrimary = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w600,
    height: 1.2,
    color: AppColors.textOnPrimary,
  );

  // Special Text Styles
  static const TextStyle font10W400TextTertiary = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.normal,
    height: 1.4,
    color: AppColors.textTertiary,
  );

  static const TextStyle font10W600TextSecondary = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w600,
    height: 1.4,
    color: AppColors.textSecondary,
  );

  // Error Text Style
  static const TextStyle font12W400Error = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.normal,
    height: 1.4,
    color: AppColors.error,
  );

  // Link Text Style
  static const TextStyle font14W500Primary = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    height: 1.5,
    color: AppColors.primary,
    decoration: TextDecoration.underline,
  );

  // Anime specific styles
  static const TextStyle font18W700TextPrimary = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    height: 1.3,
    color: AppColors.textPrimary,
  );

  static const TextStyle font14W500TextSecondary = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    height: 1.4,
    color: AppColors.textSecondary,
  );

  static const TextStyle font12W500Primary = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    height: 1.3,
    color: AppColors.primary,
  );

  static const TextStyle font14W700Accent = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    height: 1.3,
    color: AppColors.accent,
  );

  // Custom format text styles
  static const TextStyle font14W400Black = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    height: 1.5,
    color: Colors.black,
  );

  static var font24W700TextPrimary = font24W600TextPrimary.copyWith(
    fontWeight: FontWeight.bold,
  );

  static var font14W700TextOnPrimary = font14W600TextOnPrimary.copyWith(
    fontWeight: FontWeight.bold,
  );

  static var font14W700TextPrimary = font14W600TextPrimary.copyWith(
    fontWeight: FontWeight.bold,
  );
}
