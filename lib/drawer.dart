import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:youth_office/ask_us_page.dart';
import 'erasmus_page.dart';

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
              child: new ListView(
                controller: ScrollController(),
                children: <Widget>[
                  new UserAccountsDrawerHeader(
                    //Color(0xff4367b1)
                    decoration: BoxDecoration(
                      color: Colors.red.shade800,
                    ),
                    accountName: new Text(
                      '',
                      style: TextStyle(
                        fontSize: 1,
                        fontWeight: FontWeight.w800,
                        //color: Colors.grey[300],
                        color: Colors.black,
                      ),
                    ),
                    accountEmail: new Text(
                      'Welcome!',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  new ListTile(
                      title: new Text(
                        'Erasmus+',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder:(context) => ErasmusPage()));
                      },
                      leading: new Icon(
                        Icons.card_travel,
                        size: 26.0,
                        color: Colors.black,
                      ),
                    ),
                  new ListTile(
                    title: new Text(
                      'European Youth Portal',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                    onTap: () {
                      // Update the state of the app
                      // ...
                      // Then close the drawer
                      Navigator.pop(context);
                    },
                    leading: new Icon(
                      Icons.people_alt_outlined,
                      size: 26.0,
                      color: Colors.black,
                    ),
                  ),
                  new ListTile(
                    title: new Text(
                      'Eurodesk',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                    onTap: () {
                      // Update the state of the app
                      // ...
                      // Then close the drawer
                      Navigator.pop(context);
                    },
                    leading: new Icon(
                      Icons.message,
                      size: 26.0,
                      color: Colors.black,
                    ),
                  ),
                  new ListTile(
                    title: new Text(
                      'Turkish National Agency',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                    onTap: () {
                      // Update the state of the app
                      // ...
                      // Then close the drawer
                      Navigator.pop(context);
                    },
                    leading: new Icon(
                      Icons.apartment,
                      size: 26.0,
                      color: Colors.black,
                    ),
                  ),

                  new ListTile(
                    title: new Text(
                      'SDG Guide',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                    onTap: () {
                      // Update the state of the app
                      // ...
                      // Then close the drawer
                      Navigator.pop(context);
                    },
                    leading: new Icon(
                      Icons.book_rounded,
                      size: 26.0,
                      color: Colors.black,
                    ),
                  ),

                  new ListTile(
                    title: new Text(
                      'CV & Cover Letter Help',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                    onTap: () {
                      // Update the state of the app
                      // ...
                      // Then close the drawer
                      Navigator.pop(context);
                    },
                    leading: new Icon(
                      Icons.help_outline,
                      size: 26.0,
                      color: Colors.black,
                    ),
                  ),

                  new ListTile(
                    title: new Text(
                      'Experience Sharing',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                    onTap: () {
                      // Update the state of the app
                      // ...
                      // Then close the drawer
                      Navigator.pop(context);
                    },
                    leading: new Icon(
                      Icons.forum,
                      size: 26.0,
                      color: Colors.black,
                    ),
                  ),
                  new ListTile(
                    title: new Text(
                      'Ask Us',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                      // Update the state of the app
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => AskUsPage(),
                      ));
                      // Then close the drawer

                    },
                    leading: new Icon(
                      Icons.forum,
                      size: 26.0,
                      color: Colors.black,
                    ),
                  ),
                  new Divider(
                    color: Colors.black38,
                  ),
                  new ListTile(
                    title: new Text(
                      'Sign out',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                    onTap: () {
                      // Update the state of the app
                      // ...
                      // Then close the drawer
                      FirebaseAuth.instance.signOut();
                      //Navigator.pop(context);
                    },
                    leading: new Icon(
                      Icons.logout,
                      size: 26.0,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
