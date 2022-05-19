import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:youth_office/profile_page.dart';
import 'drawer.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:youth_office/mainpage.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _pageIndex = 0;
  GlobalKey _bottomNavigationKey = GlobalKey();

  List pages = [
    MyRoute(
      iconData: Icons.home,
      page: MainPage(),
    ),
    MyRoute(
      iconData: Icons.forum,
      page:Container(),
    ),

    MyRoute(
      iconData: Icons.person_outline,
      page:ProfilePage(),
    ),


  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        title: Text('AGU Youth Factory'),
        centerTitle: true,
        backgroundColor: Colors.red.shade800,
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: Icon(Icons.more_vert_outlined),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),

      ),
      drawer: new MyDrawer(),
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: 0,
        height: 60.0,
        items: pages
            .map(
              (p) => Icon(
            p.iconData,
            size: 30,
            color: Colors.white,
          ),
        )
            .toList(),
        color: Colors.red.shade800,
        buttonBackgroundColor: Colors.red.shade600,
        backgroundColor: Color(0xFFD7CECE),
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 500),
        onTap: (index) {
          setState(
                () {
              _pageIndex = index;
            },
          );
        },
      ),
      backgroundColor: Colors.white,
      body: pages[_pageIndex].page,
    );
  }
}

class MyRoute {
  final IconData iconData;
  final Widget page;

  MyRoute({required this.iconData, required this.page});
}
