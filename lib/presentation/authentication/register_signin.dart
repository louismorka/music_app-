import 'package:flutter/material.dart';
import 'package:new_spotifyapp/common/helpers/is_dark_mode.dart';
import 'package:new_spotifyapp/core/config/assets/app_images.dart';
import 'package:new_spotifyapp/core/config/theme/app_colors.dart';
import 'package:new_spotifyapp/presentation/widgets/default_app_bar.dart';

import '../widgets/app_default_button.dart';

class RegisterSignin extends StatelessWidget {
  const RegisterSignin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          DefaultAppBar(),
          Align(
            alignment: Alignment.topRight,
            child: Image.asset(AppImages.patternOne),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Image.asset(AppImages.patternTwo),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Image.asset(AppImages.greenHair),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsetsDirectional.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(AppImages.spotifyLogo, height: 65),
                  SizedBox(height: 25),
                  Text(
                    'Enjoy Listening To Music',
                    style: TextStyle(
                      color:
                          context.isDarkMode
                              ? AppColors.white
                              : AppColors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 25),
                  Text(
                    style: TextStyle(color: AppColors.grey, fontSize: 18),
                    textAlign: TextAlign.center,
                    'Nisi vulputate magna aenean facilisis habitant. Curabitur blandit mollis lacus etiam,',
                  ),
                  SizedBox(height: 25),
                  Row(
                    children: [
                      Expanded(
                        child: AppDefaultButton(
                          onPressed: () {
                            Navigator.pushNamed(context, 'signup');
                          },
                          title: 'Register',
                        ),
                      ),
                      SizedBox(width: 5),
                      Expanded(
                        child: TextButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            backgroundColor: AppColors.lightBackground,
                            elevation: 0,
                            padding: EdgeInsetsDirectional.symmetric(
                              horizontal: 45,
                              vertical: 25,
                            ),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, 'login');
                          },
                          child: Text(
                            'Sign In',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: AppColors.black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
