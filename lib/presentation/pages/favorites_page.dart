import 'package:flutter/material.dart';

import '../../core/config/assets/app_images.dart';
import '../../core/config/theme/app_colors.dart';
import '../widgets/app_bottom_navigation.dart';

void main() {
  return runApp(FavoritesPage());
}

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({super.key});

  @override
  State<FavoritesPage> createState() => FavoritesPageState();
}

class FavoritesPageState extends State<FavoritesPage> {
  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> albums = [
      {'poster': AppImages.artistOne, 'song': 'Bad Guy'},
      {'poster': AppImages.artistTwo, 'song': 'Scorpion'},
      {'poster': AppImages.artistThree, 'song': 'WHO'},
    ];

    List<Map<String, String>> songs = [
      {'artist': 'Harry Styles', 'song': 'As It Was', 'time': '5:33'},
      {'artist': 'Dave', 'song': 'Sprinter', 'time': '3:22'},
      {'artist': 'DJ Khaled', 'song': 'God Did', 'time': '3:43'},
      {'artist': 'Central Cee', 'song': 'Mrs', 'time': '3:23'},
      {'artist': 'DJ Dejay', 'song': 'God First', 'time': '3:43'},
    ];

    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Container(
              height: 250,
              width: double.maxFinite,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(40),
                  bottomLeft: Radius.circular(40),
                ),
                image: DecorationImage(
                  image: AssetImage(AppImages.artistOne),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: AppBar(
                  backgroundColor: Colors.transparent,
                  leading: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    height: 24,
                    width: 24,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.chevron_left, color: AppColors.white),
                    ),
                  ),
                  actions: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.more_vert, color: AppColors.white),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Text(
                    'Billie Eilish',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Text('2 Album .'), Text('67 Tracks')],
                  ),
                  SizedBox(height: 15),
                  Text(
                    textAlign: TextAlign.center,
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam',
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Text(
                        'Albums',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 185,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: ListView.builder(
                  padding: EdgeInsetsDirectional.only(start: 10),
                  scrollDirection: Axis.horizontal,
                  itemCount: albums.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        Container(
                          height: 130,
                          width: 135,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: AssetImage(albums[index]['poster']!),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(songs[index]['song']!),
                      ],
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Songs',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),Text('see more')
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(height: 130,
                      child: ListView.builder(
                        itemCount: songs.length,
                        scrollDirection: Axis.vertical,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: SizedBox(
                              height: 70,
                              width: double.maxFinite,
                              child: Container(
                                height: 40,
                                width: double.maxFinite,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.play_circle_fill, size: 35),
                                    ),
                                    // SizedBox(width: 20),
                                    Column(
                                      children: [
                                        Text(
                                          songs[index]['song']!,
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          songs[index]['artist']!,
                                          style: TextStyle(fontSize: 16),
                                        ),
                                      ],
                                    ),
                                    //SizedBox(width: 35),
                                    Text(
                                      songs[index]['time']!,
                                      style: TextStyle(fontSize: 16),
                                    ),
                                    //SizedBox(width: 35),
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.favorite,
                                        color: AppColors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),// bottomNavigationBar: AppBottomNavigation(),
      ),
    );
  }
}
