import 'package:flutter/material.dart';
import 'package:new_spotifyapp/core/config/assets/app_images.dart';
import 'package:new_spotifyapp/core/config/theme/app_colors.dart';
import 'package:new_spotifyapp/presentation/widgets/default_app_bar.dart';

class LyricsPage extends StatelessWidget {
  const LyricsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Column(
                  children: [
                    Image(
                      image: AssetImage(AppImages.artistOne),
                      fit: BoxFit.cover,
                      height: 655,
                    ),
                  ],
                ),
              ),
              Align(
                //alignment: Alignment.topCenter,
                child: Column(
                  children: [
                    AppBar(
                      backgroundColor: Colors.transparent,
                      leading: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                        ),
                        height: 24,
                        width: 24,
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.chevron_left,
                            color: AppColors.white,
                          ),
                        ),
                      ),
                      title: Text(
                        'Bad Guy',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: AppColors.white,
                        ),
                      ),
                      centerTitle: true,
                      actions: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.more_vert, color: AppColors.white),
                        ),
                      ],
                    ),
                    Container(
                      height: 570,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(padding: EdgeInsets.only(left: 50)),
                              Text(
                                '(Verse 1)',
                                style: TextStyle(
                                  color: AppColors.white,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            """Sleepin', you're on your tippy toes

Creepin' around like no one knows
Think you're so criminal

Bruises on both my knees for you 

Don't say thank you or please

I do what I want when I'm wanting to


                        """,
                            style: TextStyle(
                              color: AppColors.darkGrey,
                              fontSize: 18,
                            ),
                          ),
                          Row(
                            children: [
                              Padding(padding: EdgeInsets.only(left: 50)),
                              Text(
                                '(Verse 2)',
                                style: TextStyle(
                                  color: AppColors.white,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            softWrap: true,
                            """Sleepin', you're on your tippy toes

Creepin' around like no one knows
Think you're so criminal

Bruises on both my knees for you 
                        """,
                            style: TextStyle(
                              color: AppColors.darkGrey,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsetsDirectional.symmetric(horizontal: 15,vertical: 15),
            child: Column(
              children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage(AppImages.artistOne),
                            ),
                            SizedBox(width: 10),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Bad Guy',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text('Billie Eilish',style: TextStyle(fontSize: 16,)),
                              ],
                            ),///////////
                          ],
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.favorite_border_outlined),
                        ),
                      ],
                    ),
                    Slider(padding: EdgeInsetsDirectional.all(10),
                      allowedInteraction: SliderInteraction.tapAndSlide,
                      value: 2,
                      inactiveColor: AppColors.grey,
                      activeColor: AppColors.darkGrey,
                      min: 0.00,
                      max: 4.56,
                      thumbColor: AppColors.darkGrey,
                      onChanged: (value) {},
                    ),Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text('2:25'), Text('4:02')],
                    ), Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Image(image: AssetImage(AppImages.repeat)),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Image(image: AssetImage(AppImages.previous)),
                          iconSize: 30,
                        ),
                        Container(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: AppColors.primary,
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.pause, color: AppColors.white, size: 25),
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Image(image: AssetImage(AppImages.nextButton)),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Image(image: AssetImage(AppImages.shuffle)),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
