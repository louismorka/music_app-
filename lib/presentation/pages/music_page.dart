import 'package:flutter/material.dart';
import 'package:new_spotifyapp/core/config/assets/app_images.dart';
import 'package:new_spotifyapp/core/config/theme/app_colors.dart';
import 'package:new_spotifyapp/presentation/widgets/default_app_bar.dart';
import 'home_page.dart';

class MusicPage extends StatefulWidget {
  const MusicPage({super.key});

  @override
  State<MusicPage> createState() => _MusicPageState();
}

class _MusicPageState extends State<MusicPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        child: Column(
          children: [
            DefaultAppBar(
              title: Text(
                'Now playing',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              actions: [
                IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
              ],
            ),
            SizedBox(height: 20),
            Container(
              height: 370,
              width: double.maxFinite,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                  image: AssetImage(AppImages.artistOne),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      'Bad Guy',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Billie Eilish',
                      style: TextStyle(
                        fontSize: 18,
                        //fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.favorite_border_outlined, size: 35),
                ),
              ],
            ),
            SizedBox(height: 20),

            Slider(
              allowedInteraction: SliderInteraction.tapAndSlide,
              value: 2,
              inactiveColor: AppColors.grey,
              activeColor: AppColors.darkGrey,
              min: 0.00,
              max: 4.56,
              thumbColor: AppColors.darkGrey,
              onChanged: (value) {},
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text('2:25'), Text('4:02')],
            ),
            SizedBox(height: 30),
            Row(
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
                  height: 72,
                  width: 72,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: AppColors.primary,
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.pause, color: AppColors.white, size: 30),
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
            SizedBox(height: 30),
            GestureDetector(
              onTap: () {Navigator.pushNamed(context, 'lyricspage');},
              child: Column(
                children: [
                  Image(image: AssetImage(AppImages.arrowUpIcon)),
                  Text('Lyrics', style: TextStyle(fontSize: 16)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
