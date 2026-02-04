import 'package:flutter/material.dart';
import 'package:new_spotifyapp/core/config/theme/app_colors.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.lightBackground,
    brightness: Brightness.light,
    fontFamily: 'Satoshi',
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        textStyle: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      ),
    ),
  );

  static final darkTheme = ThemeData(
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.darkBackground,
    brightness: Brightness.dark,
    fontFamily: 'Satoshi',
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        textStyle: TextStyle(
          color: AppColors.white,
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: EdgeInsets.all(30),
      hintStyle: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: AppColors.grey,
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.white.withValues(alpha: 0.14)),
        borderRadius: BorderRadius.circular(30),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.white.withValues(alpha: 0.14)),
        borderRadius: BorderRadius.circular(30),
      ),
    ),
  );
}
