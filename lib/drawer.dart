import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:youth_office/Pages/ask_us_page.dart';
import 'package:youth_office/Widget/custom_widgets.dart';
import 'Pages/erasmus_page.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 50),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(180),
        ),
        child: SizedBox(
          width: 250,
          child: Drawer(
            child: Scrollbar(
              isAlwaysShown: true,
              thickness: 8,
              child: CustomWidgets.drawer_widget(context),
            ),
          ),
        ),
      ),
    );
  }
}
