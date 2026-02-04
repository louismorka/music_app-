import 'package:flutter/material.dart';

import '../../core/config/assets/app_images.dart';
import '../../core/config/theme/app_colors.dart';
import '../widgets/app_default_button.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

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
                      "Register",
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
                        labelText: 'Full Name',
                        contentPadding: EdgeInsetsDirectional.symmetric(
                          horizontal: 40,
                          vertical: 30,
                        ),
                        border: OutlineInputBorder(
                          //gapPadding: 40,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Enter Email',
                        contentPadding: EdgeInsetsDirectional.symmetric(
                          horizontal: 40,
                          vertical: 30,
                        ),
                        border: OutlineInputBorder(
                          //gapPadding: 40,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.password_outlined),
                        labelText: 'Password',
                        contentPadding: EdgeInsetsDirectional.symmetric(
                          horizontal: 40,
                          vertical: 30,
                        ),
                        border: OutlineInputBorder(
                          //gapPadding: 40,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    AppDefaultButton(onPressed: () {}, title: 'Sign In'),
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
                        Image.asset(AppImages.googleLogo, height: 30),
                        SizedBox(width: 25),
                        Image.asset(AppImages.appleLogo, height: 30),
                      ],
                    ),
                    SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Do You Have An Account?'),
                        SizedBox(width: 5),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, 'login');
                          },
                          child: Text(
                            'Sign In',
                            style: TextStyle(color: AppColors.blue),
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
