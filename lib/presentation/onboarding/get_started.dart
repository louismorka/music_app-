import 'package:flutter/material.dart';
import 'package:new_spotifyapp/core/config/assets/app_images.dart';
import 'package:new_spotifyapp/core/config/theme/app_colors.dart';
import 'package:new_spotifyapp/presentation/widgets/app_default_button.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppImages.getStartedBg),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: EdgeInsetsDirectional.symmetric(vertical: 60,horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Enjoy Listening to Music',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: AppColors.white,
                    ),
                  ),
                  SizedBox(height: 30),
                  Text(style: TextStyle(color: AppColors.white),
                    'etiam, nam adipiscing urna, vestibulum eu odio vivamus. Quisque id odio, pulvinar massa at, posuere velit proin, eu magna id velit elementum vehicula.',
                  ),
                  SizedBox(height: 30),
                  AppDefaultButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'choosemode');
                    },
                    title: 'Get Started',
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
