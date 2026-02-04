import 'package:flutter/material.dart';

import '../../core/config/theme/app_colors.dart';

class AppDefaultButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final double? height;
  const AppDefaultButton({
    super.key,
    required this.onPressed,
    required this.title,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        minimumSize: Size.fromHeight(height ?? 85),
      ),
      onPressed: onPressed,
      child: Text(title, style: TextStyle(color: AppColors.white)),
    );
  }
}
