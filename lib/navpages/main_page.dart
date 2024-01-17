import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prac/my_page.dart';
import 'package:prac/navpages/bar_item_page.dart';

import 'home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [
    HomePage(),
    BarItemPage(),
    SearchBar(),
    MyPage()
  ];
  void onTap(int index){

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body : pages[0],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed, // Add this line
          currentIndex: 2,
          selectedItemColor: Colors.black54,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: false,
          showSelectedLabels: false,
          elevation: 0,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.apps), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: 'bar'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'person')
          ],
        )

    );
  }
}
