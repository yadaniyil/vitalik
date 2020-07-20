import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vitalik/screens/library_screen.dart';
import 'package:vitalik/screens/my_covers_screen.dart';
import 'package:vitalik/screens/my_songs_screen.dart';
import 'package:easy_localization/easy_localization.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentTabIndex = 0;

  onTapped(int index) {
    setState(() {
      currentTabIndex = index;
    });
  }

  List<Widget> screens = [
    MySongsScreen(),
    MyCoversScreen(),
    LibraryScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('vitalik'.tr()),
        leading: IconButton(
            icon: Image.asset(
          'assets/icons/yako_logo.png',
          color: Theme.of(context).primaryColor,
        ), onPressed: () {  },),
      ),
      body: screens[currentTabIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentTabIndex,
          onTap: onTapped,
          items: [
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.double_music_note),
                title: Text('songs'.tr())),
            BottomNavigationBarItem(
                icon: Icon(Icons.library_music), title: Text('covers'.tr())),
            BottomNavigationBarItem(
                icon: Icon(Icons.list), title: Text('library'.tr()))
          ]),
    );
  }
}
