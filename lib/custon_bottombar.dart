import 'package:custom_widgets/pages/about_page.dart';
import 'package:custom_widgets/pages/home_page.dart';
import 'package:custom_widgets/pages/message_page.dart';
import 'package:custom_widgets/pages/profile_page.dart';
import 'package:custom_widgets/pages/setting_page.dart';
import 'package:flutter/material.dart';

class CustomBottomBar extends StatefulWidget {
  const CustomBottomBar({super.key});

  @override
  State<CustomBottomBar> createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  // page bucket
  PageStorageBucket bucket = PageStorageBucket();

  // page index
  int current = 0;

  // current page
  Widget currentPage = const HomePage();

  // colors
  final activeColor = const Color(0xFF00A651);
  final unActiverColor = const Color(0xFF413F3F);

  // sizes
  double activeTextSize = 21;
  double activeIconSize = 27;

  double unActiveTextSize = 19;
  double unActiveIconSize = 24;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        bucket: bucket,
        child: currentPage,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const MessagePage(),
            ),
          );
        },
        backgroundColor: activeColor,
        shape: const CircleBorder(),
        splashColor: Colors.grey.shade600,
        child: Icon(
          Icons.message,
          color: Colors.white,
          size: activeIconSize,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        height: 90,
        child: SizedBox(
          height: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // 1st two
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // 1st btn
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        current = 0;
                        currentPage = const HomePage();
                      });
                    },
                    shape: const CircleBorder(),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // icon
                        Icon(
                          Icons.home,
                          size:
                              current == 0 ? activeIconSize : unActiveIconSize,
                          color: current == 0 ? activeColor : unActiverColor,
                        ),

                        // text
                        Text(
                          'Home',
                          style: TextStyle(
                            fontSize: current == 0
                                ? activeTextSize
                                : unActiveTextSize,
                            color: current == 0 ? activeColor : unActiverColor,
                          ),
                        )
                      ],
                    ),
                  ),

                  // 2nd btn
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        current = 1;
                        currentPage = const AboutPage();
                      });
                    },
                    shape: const CircleBorder(),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // icon
                        Icon(
                          Icons.info,
                          size:
                              current == 1 ? activeIconSize : unActiveIconSize,
                          color: current == 1 ? activeColor : unActiverColor,
                        ),

                        // text
                        Text(
                          'About',
                          style: TextStyle(
                            fontSize: current == 1
                                ? activeTextSize
                                : unActiveTextSize,
                            color: current == 1 ? activeColor : unActiverColor,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),

              // last two
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // 4st btn
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        current = 3;
                        currentPage = const ProfilePage();
                      });
                    },
                    shape: const CircleBorder(),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // icon
                        Icon(
                          Icons.person,
                          size:
                              current == 3 ? activeIconSize : unActiveIconSize,
                          color: current == 3 ? activeColor : unActiverColor,
                        ),

                        // text
                        Text(
                          'Profile',
                          style: TextStyle(
                            fontSize: current == 3
                                ? activeTextSize
                                : unActiveTextSize,
                            color: current == 3 ? activeColor : unActiverColor,
                          ),
                        )
                      ],
                    ),
                  ),

                  // 5nd btn
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        current = 4;
                        currentPage = const SettingPage();
                      });
                    },
                    shape: const CircleBorder(),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // icon
                        Icon(
                          Icons.info,
                          size:
                              current == 4 ? activeIconSize : unActiveIconSize,
                          color: current == 4 ? activeColor : unActiverColor,
                        ),

                        // text
                        Text(
                          'About',
                          style: TextStyle(
                            fontSize: current == 4
                                ? activeTextSize
                                : unActiveTextSize,
                            color: current == 4 ? activeColor : unActiverColor,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
