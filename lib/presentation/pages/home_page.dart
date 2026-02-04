import 'package:flutter/material.dart';
import 'package:new_spotifyapp/common/helpers/is_dark_mode.dart';
import 'package:new_spotifyapp/core/config/assets/app_images.dart';
import 'package:new_spotifyapp/core/config/theme/app_colors.dart';
import 'package:new_spotifyapp/presentation/widgets/app_bottom_navigation.dart';
import 'package:new_spotifyapp/presentation/widgets/default_app_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
    ];

    List<Map<String, String>> playlistData = [
      {'artist': 'Harry Styles', 'song': 'As It Was', 'time': '5:33'},
      {'artist': 'Dave', 'song': 'Sprinter', 'time': '3:22'},
      {'artist': 'DJ Khaled', 'song': 'God Did', 'time': '3:43'},
      {'artist': 'Central Cee', 'song': 'Mrs', 'time': '3:23'},
      {'artist': 'DJ Dejay', 'song': 'God First', 'time': '3:43'},
    ];
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Column(
            children: [
              DefaultAppBar(
                title: Image.asset(AppImages.spotifyLogo, height: 40),
                actions: [Icon(Icons.more_vert)],
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, 'musicpage',);
                },
                child: _topCard(),
              ),
              SizedBox(height: 20),
              TabBar(
                indicatorColor: AppColors.primary,
                controller: _tabController,
                isScrollable: true,
                padding: EdgeInsets.symmetric(vertical: 25, horizontal: 0),
                dividerColor: Colors.transparent,
                indicatorWeight: 4,
                labelColor:
                    context.isDarkMode ? AppColors.white : AppColors.black,
                tabAlignment: TabAlignment.startOffset,
                unselectedLabelColor:
                    context.isDarkMode ? AppColors.darkGrey : AppColors.grey,
                onTap: (index) {},
                tabs: [
                  Text('News', style: TextStyle(fontSize: 18)),
                  Text('Video', style: TextStyle(fontSize: 18)),
                  Text('Artists', style: TextStyle(fontSize: 18)),
                  Text('Podcasts', style: TextStyle(fontSize: 18)),
                ],
              ),
              SizedBox(
                height: 320,
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: data.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            height: 320,
                            width: 180,
                            padding: EdgeInsetsDirectional.all(5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 240,
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 130,
                                    vertical: 210,
                                  ),
                                  width: 170,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                      image: AssetImage(data[index]['poster']!),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  child: Icon(
                                    Icons.play_circle_fill,
                                    size: 40,
                                    color: AppColors.grey,
                                  ),
                                ),
                                Text(
                                  data[index]['song']!,
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  data[index]['artist']!,
                                  style: TextStyle(fontSize: 16),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    Row(children: []),
                    Row(children: []),
                    Row(children: []),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Playlist',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('See More', style: TextStyle(fontSize: 14)),
                  ],
                ),
              ),
              SizedBox(
                height: 120,
                child: ListView.builder(
                  itemCount: playlistData.length,
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
                                    playlistData[index]['song']!,
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    playlistData[index]['artist']!,
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ],
                              ),
                              //SizedBox(width: 35),
                              Text(
                                playlistData[index]['time']!,
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
            ],
          ),
        ),
      ),
      //bottomNavigationBar: AppBottomNavigation(),
    );
  }
}

class _topCard extends StatelessWidget {
  const _topCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Container(
            padding: EdgeInsets.only(left: 20),
            height: 130,
            decoration: BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'New Album',
                        style: TextStyle(fontSize: 16, color: AppColors.white),
                      ),
                      Text(
                        'Happier Than Ever',
                        style: TextStyle(
                          fontSize: 22,
                          color: AppColors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Billie Ellish',
                        style: TextStyle(
                          fontSize: 16,
                          color: AppColors.white,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Image.asset(AppImages.patternTwo, height: 100),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: -50,
          right: 35,
          child: Image.asset(AppImages.songCover, height: 180),
        ),
      ],
    );
  }
}
