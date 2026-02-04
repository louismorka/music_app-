import 'package:flutter/material.dart';
import 'package:new_spotifyapp/core/config/assets/app_images.dart';
import 'package:new_spotifyapp/core/config/theme/app_colors.dart';
import 'package:new_spotifyapp/presentation/widgets/app_default_button.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsetsDirectional.symmetric(
            horizontal: 20,
            vertical: 20,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Image.asset(AppImages.spotifyLogo, height: 45),
              ),
              Align(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Text(
                      "Sign In",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 30),
                    Row(
                      children: [
                        Text('If you need any support'),
                        SizedBox(width: 5),
                        Text(
                          'Click Here',
                          style: TextStyle(color: AppColors.primary),
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Full Name',
                      ).applyDefaults(Theme.of(context).inputDecorationTheme),
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Password',
                      ).applyDefaults(Theme.of(context).inputDecorationTheme),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [Text('Recovery Password')],
                    ),
                    SizedBox(height: 20),
                    AppDefaultButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'homepage');
                      },
                      title: 'Sign In',
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(AppImages.line),
                        Text('Or'),
                        Image.asset(AppImages.line),
                      ],
                    ),
                    SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(AppImages.googleLogo, height: 25),
                        SizedBox(width: 25),
                        Image.asset(AppImages.appleLogo, height: 30),
                      ],
                    ),
                    SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Not A Member?'),
                        SizedBox(width: 5),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, 'signup');
                          },
                          child: Text(
                            'Register Now',
                            style: TextStyle(color:  AppColors.blue),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
