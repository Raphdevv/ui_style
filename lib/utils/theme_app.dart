import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_style/utils/app_colors.dart';

class AppTheme {
  AppTheme._();

  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    textTheme: GoogleFonts.kanitTextTheme(),
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: AppColors.darkBrown,
      onPrimary: AppColors.offWhite,
      secondary: AppColors.taupe,
      onSecondary: AppColors.offWhite,
      error: AppColors.error,
      onError: AppColors.offWhite,
      surface: Colors.white,
      onSurface: AppColors.darkBrown,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.darkBrown,
      foregroundColor: AppColors.offWhite,
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    textTheme: GoogleFonts.kanitTextTheme(),
    colorScheme: const ColorScheme(
      brightness: Brightness.dark,
      primary: AppColors.offWhite,
      onPrimary: AppColors.darkBrown,
      secondary: AppColors.offWhite,
      onSecondary: AppColors.taupe,
      error: AppColors.error,
      onError: AppColors.offWhite,
      surface: AppColors.darkBrown,
      onSurface: Colors.white,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.grayishBrown,
      foregroundColor: AppColors.offWhite,
    ),
  );
}
