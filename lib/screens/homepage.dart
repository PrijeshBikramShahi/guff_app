import 'package:dice_bear/dice_bear.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:guff/screens/homepage_tabs/video_call.dart';
import 'package:guff/screens/homepage_tabs/contacts.dart';
import 'package:guff/screens/homepage_tabs/messages.dart';
import 'package:guff/screens/homepage_tabs/settings.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

int _currentIndex = 0;
List<Widget> _pages = [
  MessagesPage(),
  VideoCallPage(),
  StoryPage(),
  PeoplePage(),
];

class _HomePageState extends State<HomePage> {
  Avatar _avatar =
      DiceBearBuilder.withRandomSeed(sprite: DiceBearSprite.croodles).build();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarMethod(_avatar),
      body: SafeArea(
        child: _pages[_currentIndex],
      ),
      bottomNavigationBar: bottomBarMethod(),
    );
  }

  CupertinoTabBar bottomBarMethod() {
    return CupertinoTabBar(
      currentIndex: _currentIndex,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.chat_bubble_rounded),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.video_camera_front_rounded),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.view_carousel_rounded),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.people_rounded),
        ),
      ],
      activeColor: Colors.deepOrangeAccent,
      onTap: (value) {
        setState(
          () {
            _currentIndex = value;
          },
        );
      },
    );
  }

  AppBar appBarMethod(Avatar imageVar) {
    return AppBar(
      backgroundColor: Colors.transparent,
      leading: Padding(
        padding: const EdgeInsets.only(left: 15.0),
        child: Icon(
          Icons.search,
          size: 40,
        ),
      ),
      title: Image.asset(
        './assets/images/light/logo_1.png',
        height: 50,
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: CircleAvatar(
            child: imageVar.toImage(
              fit: BoxFit.contain
            ),
          ),
        ),
      ],
    );
  }
}
