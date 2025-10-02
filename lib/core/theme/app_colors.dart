import 'package:flutter/material.dart';

abstract class AppColors {
  // Primary Colors
  static const Color primary = Color(0xFF5436F8);
  static const Color primaryDark = Color(0xFF5A4FCF);
  static const Color secondary = Color(0xFF645C3A);
  static const Color selectedColor = Color(0xFF18153F);
  static const Color animeDetailsBackground = Color(0xFF331E5E);

  // Background Colors
  static const Color background = Color(0xFFF9F8FD);

  // Text Colors
  static const Color textPrimary = Color(0xFF2D3436);
  static const Color textSecondary = Color(0xFFACACAC);
  static const Color textTertiary = Color(0xFF95A3A8);
  static const Color textOnPrimary = Color(0xFFFFFFFF);

  // Accent Colors
  static const Color accent = Color(0xFF00B894);
  static const Color warning = Color(0xFFFDCB6E);
  static const Color error = Color(0xFFE17055);
  static const Color success = Color(0xFF00B894);
  static const Color info = Color(0xFF74B9FF);

  static const backGroundGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Color(0xFFDDE2FF), Color(0xFFDDE2FF), Color(0xFFFFFFFF)],
  );
}
