import 'package:flutter/material.dart';
import 'package:ui_style/utils/app_colors.dart';

class AppTheme {
  AppTheme._();

  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Kanit',
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
    fontFamily: 'Kanit',
    colorScheme: const ColorScheme(
      brightness: Brightness.dark,
      primary: AppColors.lightBeige,
      onPrimary: AppColors.darkBrown,
      secondary: AppColors.taupe,
      onSecondary: AppColors.offWhite,
      error: AppColors.error,
      onError: AppColors.offWhite,
      surface: AppColors.grayishBrown,
      onSurface: AppColors.offWhite,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.grayishBrown,
      foregroundColor: AppColors.offWhite,
    ),
  );
}
