import 'package:flutter/material.dart';
import 'package:new_spotifyapp/common/helpers/is_dark_mode.dart';
import 'package:new_spotifyapp/core/config/theme/app_colors.dart';

class DefaultAppBar extends StatelessWidget {
  final Widget? title;
  final List<Widget> ? actions;
  const DefaultAppBar({this.title,this.actions ,super.key,});

  @override
  Widget build(BuildContext context) {
    return AppBar(backgroundColor: Colors.transparent,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color:
                context.isDarkMode
                    ? AppColors.white.withValues(alpha: 0.03)
                    : AppColors.black.withValues(alpha: 0.04),
            shape: BoxShape.circle,
          ),
          child: Icon(
            Icons.arrow_back_ios,
            color: context.isDarkMode ? AppColors.white : AppColors.black,
          ),
        ),
      ),
      title: title,
      centerTitle: true,
      actions: actions,
    );
  }
}
