import 'package:flutter/material.dart';

extension DarkMode on BuildContext {
  bool get isDarkMode {
    return Theme.of(this).brightness == Brightness.dark;
  }
}

// color: context.isDarkMode? AppColors.white: AppColors.black, :
// Execute this code when you need to set the colour manually
