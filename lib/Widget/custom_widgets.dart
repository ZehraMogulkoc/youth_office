import 'package:flutter/material.dart';
import 'dart:math';
import 'package:youth_office/custom_clipper.dart';

import '../Pages/erasmus_page.dart';
import '../Pages/turkish_national_agency.dart';
class CustomWidgets{
  Widget title() {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
          text: 'AGU ',
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.w700, color: Colors.white),
          children: [
            TextSpan(
              text: 'YOUTH ',
              style: TextStyle(color: Colors.black, fontSize: 30),
            ),
            TextSpan(
              text: 'FACTORY',
              style: TextStyle(color: Colors.red, fontSize: 30),
            ),
          ]),
    );
}

  Widget title2() {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
          text: 'AGU',
          style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w700,
              color: Colors.red
          ),

          children: [
            TextSpan(
              text: 'Youth',
              style: TextStyle(color: Colors.black, fontSize: 30),
            ),
            TextSpan(
              text: 'Factory',
              style: TextStyle(color: Colors.red, fontSize: 30),
            ),
          ]),
    );
  }

  Widget beizerContainer(BuildContext context){
    return Container(
        child: Transform.rotate(
          angle: -pi / 3.5,
          child: ClipPath(
            clipper: ClipPainter(),
            child: Container(
              height: MediaQuery.of(context).size.height *.4,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color(0xfffb4857),Color(0xff6c1d1d)]
                  )
              ),
            ),
          ),
        )
    );
  }
  
  static Widget drawer_widget(BuildContext context) {
    return ListView(
      controller: ScrollController(),
      children: <Widget>[
        new UserAccountsDrawerHeader(
          //Color(0xff4367b1)
          decoration: BoxDecoration(
            color: Colors.red.shade800,
          ),
          accountName: Text(
            '',
            style: TextStyle(
              fontSize: 1,
              fontWeight: FontWeight.w800,
              //color: Colors.grey[300],
              color: Colors.black,
            ),
          ),
          accountEmail:Text(
            'Welcome!',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w800,
              color: Colors.black,
            ),
          ),
        ),
         ListTile(
          title: Text(
            'Erasmus+',
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ErasmusPage()));
          },
          leading:Icon(
            Icons.card_travel,
            size: 26.0,
            color: Colors.black,
          ),
        ),
        ListTile(
          title: Text(
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
          leading: Icon(
            Icons.people_alt_outlined,
            size: 26.0,
            color: Colors.black,
          ),
        ),
        ListTile(
          title: Text(
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
          leading: Icon(
            Icons.message,
            size: 26.0,
            color: Colors.black,
          ),
        ),
         ListTile(
          title:  Text(
            'Turkish National Agency',
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => TNA()));
          },
          leading:  Icon(
            Icons.apartment,
            size: 26.0,
            color: Colors.black,
          ),
        ),
        ListTile(
          title:Text(
            'SDG Guide',
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
          onTap: () {
            Navigator.pop(context);
          },
          leading: Icon(
            Icons.book_rounded,
            size: 26.0,
            color: Colors.black,
          ),
        ),
        ListTile(
          title: Text(
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
          leading: Icon(
            Icons.help_outline,
            size: 26.0,
            color: Colors.black,
          ),
        ),
        ListTile(
          title: Text(
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
          leading: Icon(
            Icons.forum,
            size: 26.0,
            color: Colors.black,
          ),
        ),
        Divider(
          color: Colors.black38,
        ),
        ListTile(
          title: Text(
            'Sign out',
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
          onTap: () {

            Navigator.pop(context);
          },
          leading: Icon(
            Icons.logout,
            size: 26.0,
            color: Colors.black,
          ),
        ),
      ],
    );
  }


  Widget TextFieldWidget(String type, TextEditingController ctrl, String label) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "$type",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        ),
        SizedBox(
          height: 10,
        ),
        TextFormField(
          controller: ctrl,
          textAlign: TextAlign.center,
          keyboardType: TextInputType.emailAddress,
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(
            contentPadding: new EdgeInsets.symmetric(
                vertical: 15.0, horizontal: 10.0),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red),
            ),
            labelText: "$label",
            labelStyle: TextStyle(
              color: Colors.blueGrey,
              fontFamily: 'Roboto',
            ),
            border: OutlineInputBorder(),
          ),
        ),
      ],
    );
  }

}
