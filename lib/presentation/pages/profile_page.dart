import 'package:flutter/material.dart';
import 'package:new_spotifyapp/core/config/assets/app_images.dart';

import '../../core/config/theme/app_colors.dart';

void main() {
  return runApp(ProfilePage());
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> songs = [
      {'artist': 'Harry Styles', 'song': 'As It Was', 'time': '5:33'},
      {'artist': 'Dave', 'song': 'Sprinter', 'time': '3:22'},
      {'artist': 'DJ Khaled', 'song': 'God Did', 'time': '3:43'},
      {'artist': 'Harry Styles', 'song': 'As It Was', 'time': '5:33'},
      {'artist': 'Dave', 'song': 'Sprinter', 'time': '3:22'},
      {'artist': 'Dave', 'song': 'Sprinter', 'time': '3:22'},
      {'artist': 'DJ Khaled', 'song': 'God Did', 'time': '3:43'},
      {'artist': 'Harry Styles', 'song': 'As It Was', 'time': '5:33'},
      {'artist': 'Dave', 'song': 'Sprinter', 'time': '3:22'},
      {'artist': 'DJ Khaled', 'song': 'God Did', 'time': '3:43'},
      {'artist': 'Central Cee', 'song': 'Mrs', 'time': '3:23'},
      {'artist': 'DJ Dejay', 'song': 'God First', 'time': '3:43'},
    ];

    List<Map<String, String>> data = [
      {
        'poster': AppImages.artistOne,
        'song': 'Bad Guy',
        'artist': 'Billie Eilish',
      },
      {'poster': AppImages.artistTwo, 'song': 'Scorpion', 'artist': 'Drake'},
      {
        'poster': AppImages.artistThree,
        'song': 'WHO',
        'artist': 'Billie Eilish',
      },
      {
        'poster': AppImages.artistOne,
        'song': 'Bad Guy',
        'artist': 'Billie Eilish',
      },
      {'poster': AppImages.artistTwo, 'song': 'Scorpion', 'artist': 'Drake'},
      {
        'poster': AppImages.artistThree,
        'song': 'WHO',
        'artist': 'Billie Eilish',
      },
      {
        'poster': AppImages.artistOne,
        'song': 'Bad Guy',
        'artist': 'Billie Eilish',
      },
      {'poster': AppImages.artistTwo, 'song': 'Scorpion', 'artist': 'Drake'},
      {
        'poster': AppImages.artistThree,
        'song': 'WHO',
        'artist': 'Billie Eilish',
      },
      {
        'poster': AppImages.artistOne,
        'song': 'Bad Guy',
        'artist': 'Billie Eilish',
      },
      {'poster': AppImages.artistTwo, 'song': 'Scorpion', 'artist': 'Drake'},
      {
        'poster': AppImages.artistThree,
        'song': 'WHO',
        'artist': 'Billie Eilish',
      },
    ];

    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Container(
              height: 320,
              width: double.maxFinite,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(40),
                  bottomLeft: Radius.circular(40),
                ),
                color: Colors.redAccent,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  AppBar(
                    centerTitle: true,
                    title: Text(
                      'Profile',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
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
                          color: AppColors.darkGrey,
                        ),
                      ),
                    ),
                    actions: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.more_vert, color: AppColors.darkGrey),
                      ),
                    ],
                  ),
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage(AppImages.artistThree),
                  ),
                  Text('thisisauser@gmail.com'),
                  Text(
                    'Soroushnrz',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Text(
                            '778',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text('Followers'),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            '778',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text('Following'),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.symmetric(
                vertical: 15,
                horizontal: 30,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'PUBLIC PLAYLISTS',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 470,
                    width: double.maxFinite,
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: songs.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Container(
                                height: 70,
                                width: 80,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                    image: AssetImage(data[index]['poster']!),fit: BoxFit.cover
                                  ),
                                ),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  data[index]['song']!,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                  ),
                                ),
                                Text(data[index]['artist']!),
                              ],
                            ),
                            Text(songs[index]['time']!),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.more_horiz),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
