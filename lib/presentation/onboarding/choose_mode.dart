import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_spotifyapp/core/config/assets/app_images.dart';
import 'package:new_spotifyapp/core/config/theme/app_colors.dart';
import 'package:new_spotifyapp/presentation/onboarding/bloc/theme_cubit.dart';

class ChooseMode extends StatelessWidget {
  const ChooseMode({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 80),
        width: double.maxFinite,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImages.chooseModeBg),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image(image: AssetImage(AppImages.spotifyLogo), height: 60),
            SizedBox(height: 250),
            Text(
              'Choose Mode',
              style: TextStyle(
                fontSize: 25,
                color: AppColors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    IconButton(
                      onPressed: () { context.read<ThemeCubit>().updateTheme(ThemeMode.dark);},
                      icon: Icon(
                        Icons.dark_mode_outlined,
                        color: AppColors.grey,
                        size: 40,
                      ),
                    ),
                    Text(
                      'Dark mode',
                      style: TextStyle(
                        fontSize: 25,
                        color: AppColors.grey,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 35),
                Column(
                  children: [
                    IconButton(
                      onPressed: () { context.read<ThemeCubit>().updateTheme(ThemeMode.light);},
                      icon: Icon(
                        Icons.light_mode_outlined,
                        color: AppColors.grey,
                        size: 40,
                      ),
                    ),
                    Text(
                      'Light mode',
                      style: TextStyle(
                        fontSize: 25,
                        color: AppColors.grey,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 60),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 100, vertical: 30),
                backgroundColor: AppColors.primary,
                textStyle: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              onPressed: () {Navigator.pushNamed(context, 'registerSignin');},
              child: Text('Continue', style: TextStyle(color: AppColors.grey)),
            ),
          ],
        ),
      ),
    );
  }
}
