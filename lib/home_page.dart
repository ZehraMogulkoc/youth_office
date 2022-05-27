import 'package:flutter/material.dart';
import 'package:youth_office/navigation_drawer_widget.dart';
import 'package:youth_office/Pages/mainpage.dart';
import 'package:youth_office/bottom_navbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MainPage(),
      bottomNavigationBar: BottomNavBar() ,
    );
  }
}
