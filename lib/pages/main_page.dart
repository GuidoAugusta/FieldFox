import 'package:field_fox/pages/history_page.dart';
import 'package:field_fox/pages/homepage.dart';
import 'package:field_fox/pages/profile_page.dart';
import 'package:field_fox/pages/search_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

int currentIndex = 0;

List pages = [
  HomePage(),
  SearchPage(),
  HistoryPage(),
  ProfilePage(),
];

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MainPage> {
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTap,
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color(0xFFF58235),
        backgroundColor: Colors.white,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        items: [
          BottomNavigationBarItem(label: "", icon: Icon(FeatherIcons.home)),
          BottomNavigationBarItem(label: "", icon: Icon(FeatherIcons.search)),
          BottomNavigationBarItem(label: "", icon: Icon(FeatherIcons.calendar)),
          BottomNavigationBarItem(label: "", icon: Icon(FeatherIcons.user)),
        ],
      ),
    );
  }
}
