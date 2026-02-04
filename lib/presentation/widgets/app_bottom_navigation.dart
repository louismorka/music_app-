import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:new_spotifyapp/core/config/assets/app_images.dart';
import 'package:new_spotifyapp/core/config/theme/app_colors.dart';

class AppBottomNavigation extends StatefulWidget {
  const AppBottomNavigation({super.key});

  @override
  State<AppBottomNavigation> createState() => _AppBottomNavigationState();
}

class _AppBottomNavigationState extends State<AppBottomNavigation> {
  int _currentScreenIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      elevation: 3,
      //backgroundColor: AppColors.primary,
      //type: BottomNavigationBarType.fixed,
      iconSize: 30,
      onTap: (index) {
        setState(() {
          _currentScreenIndex = index;
        });
      },
      currentIndex: _currentScreenIndex,

      items: [
        BottomNavigationBarItem(
          label: 'Home',
          activeIcon: Image.asset(AppImages.homeFillIcon),
          icon: Image.asset(AppImages.home),
        ),

        BottomNavigationBarItem(
          label: 'Discovery',
          activeIcon: Image.asset(AppImages.discoveryFillIcon),
          icon: Image.asset(AppImages.discovery),
        ),

        BottomNavigationBarItem(
          label: 'Favourites',
          activeIcon: Image.asset(AppImages.heartFillIcon),
          icon:Image.asset(AppImages.heart),
        ),

        BottomNavigationBarItem(
          label: 'Profile',
          activeIcon: Image.asset(AppImages.profileFillIcon),
          icon: Image.asset(AppImages.profile),
        ),
      ],
    );
  }
}
