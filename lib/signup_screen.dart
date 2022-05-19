
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'login_page.dart';
import 'container.dart';
class SignUpPage extends StatefulWidget {
  SignUpPage({Key ?key, this.title}) : super(key: key);

  final String? title;

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

  final controllerName = TextEditingController();
  final controllerEmail = TextEditingController();
  final controllerTelephoneNumber = TextEditingController();
  final controllerStudentStatus = TextEditingController();
  final controllerWhereDidYouHear = TextEditingController();
  final controllerCity = TextEditingController();
  final controllerAge = TextEditingController();
  final controllerPassword = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controllerName.addListener(() =>setState(() {}));
    controllerEmail.addListener(() =>setState(() {}));
    controllerTelephoneNumber.addListener(() =>setState(() {}));
    controllerStudentStatus.addListener(() =>setState(() {}));
    controllerWhereDidYouHear.addListener(() =>setState(() {}));
    controllerCity.addListener(() =>setState(() {}));
    controllerAge.addListener(() =>setState(() {}));
    controllerPassword.addListener(() =>setState(() {}));
  }
  Widget _backButton() {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 0, top: 10, bottom: 10),
              child: Icon(Icons.keyboard_arrow_left, color: Colors.black),
            ),
            Text('Back',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }

  Widget _submitButton() {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(vertical: 15),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.grey.shade200,
                offset: Offset(2, 4),
                blurRadius: 5,
                spreadRadius: 2)
          ],
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Color(0xfffb4857),Color(0xff6c1d1d)])),
      child: TextButton(
        child: Text( 'Register Now',
          style: TextStyle(fontSize: 20, color: Colors.white),),
        // TODO add firebase functuonality.
        onPressed: () async {
          final json ={
            'name': controllerName.text,
            'email': controllerEmail.text,
            'telephoneNumber':controllerTelephoneNumber.text,
            'studentStatus':controllerStudentStatus.text,
            'whereDidYouHear':controllerWhereDidYouHear.text,
            'city':controllerCity.text,
            'age':controllerAge.text,

          };

          await FirebaseFirestore.instance.collection('users').doc(controllerEmail.text).set(json);
          await FirebaseAuth.instance.createUserWithEmailAndPassword(email: controllerEmail.text, password: controllerPassword.text);
          setState(() {
            controllerName.clear();
            controllerEmail.clear();
            controllerTelephoneNumber.clear();
            controllerStudentStatus.clear();
            controllerWhereDidYouHear.clear();
            controllerCity.clear();
            controllerAge.clear();
            controllerPassword.clear();
          });
        },

      ),
    );
  }

  Widget _loginAccountLabel() {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => LoginPage()));
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 20),
        padding: EdgeInsets.all(15),
        alignment: Alignment.bottomCenter,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Already have an account ?',
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Login',
              style: TextStyle(
                  color: Colors.red,
                  fontSize: 13,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }

  Widget _title() {
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

  Widget _informationWidget() {
    var age = 25;
    return Column(
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Name & Surname",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: controllerName,
              textAlign: TextAlign.center,
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                contentPadding: new EdgeInsets.symmetric(
                    vertical: 15.0, horizontal: 10.0),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                ),
                labelText: "Enter your name and surname",
                labelStyle: TextStyle(
                  color: Colors.blueGrey,
                  fontFamily: 'Roboto',
                ),
                border: OutlineInputBorder(),
              ),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Email",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: controllerEmail,
              textAlign: TextAlign.center,
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                contentPadding: new EdgeInsets.symmetric(
                    vertical: 15.0, horizontal: 10.0),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                ),
                labelText: "Enter your email",
                labelStyle: TextStyle(
                  color: Colors.blueGrey,
                  fontFamily: 'Roboto',
                ),
                border: OutlineInputBorder(),
              ),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Password",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: controllerPassword,
              textAlign: TextAlign.center,
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                contentPadding: new EdgeInsets.symmetric(
                    vertical: 15.0, horizontal: 10.0),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                ),
                labelText: "Create a password",
                labelStyle: TextStyle(
                  color: Colors.blueGrey,
                  fontFamily: 'Roboto',
                ),
                border: OutlineInputBorder(),
              ),
            ),

            Text(
              "Telephone Number",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ), SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: controllerTelephoneNumber,
              textAlign: TextAlign.center,
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                contentPadding: new EdgeInsets.symmetric(
                    vertical: 15.0, horizontal: 10.0),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                ),
                labelText: "Telephone",
                labelStyle: TextStyle(
                  color: Colors.blueGrey,
                  fontFamily: 'Roboto',
                ),
                border: OutlineInputBorder(),
              ),
            ),
            Text(
              "Student Status",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ), SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: controllerStudentStatus,
              textAlign: TextAlign.center,
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                contentPadding: new EdgeInsets.symmetric(
                    vertical: 15.0, horizontal: 10.0),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                ),
                labelText: "Student Status",
                labelStyle: TextStyle(
                  color: Colors.blueGrey,
                  fontFamily: 'Roboto',
                ),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Where did you hear us",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ), SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: controllerWhereDidYouHear,
              textAlign: TextAlign.center,
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                contentPadding: new EdgeInsets.symmetric(
                    vertical: 15.0, horizontal: 10.0),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                ),
                labelStyle: TextStyle(
                  color: Colors.white54,
                  fontFamily: 'Roboto',
                ),
                border: OutlineInputBorder(),
              ),
              ),
            Text(
              "City",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ), SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: controllerCity,
              textAlign: TextAlign.center,
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                contentPadding: new EdgeInsets.symmetric(
                    vertical: 15.0, horizontal: 10.0),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                ),
                labelStyle: TextStyle(
                  color: Colors.white54,
                  fontFamily: 'Roboto',
                ),
                border: OutlineInputBorder(),
              ),
             ),
            Text(
              "Age",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ), SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: controllerAge,
              textAlign: TextAlign.center,
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                contentPadding: new EdgeInsets.symmetric(
                    vertical: 15.0, horizontal: 10.0),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                ),
                labelStyle: TextStyle(
                  color: Colors.white54,
                  fontFamily: 'Roboto',
                ),
                border: OutlineInputBorder(),
              ),
            ),
            Column(   crossAxisAlignment: CrossAxisAlignment.start,children: [ Text(
              "Select Your Age",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),IntegerExample()],),
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        height: height,
        child: Stack(
          children: <Widget>[
            Positioned(
              top: -MediaQuery.of(context).size.height * .15,
              right: -MediaQuery.of(context).size.width * .4,
              child: BezierContainer(),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: height * .2),
                    _title(),
                    SizedBox(
                      height: 50,
                    ),
                    _informationWidget(),
                    SizedBox(
                      height: 20,
                    ),
                    _submitButton(),
                    SizedBox(height: height * .14),
                    _loginAccountLabel(),

                  ],
                ),
              ),
            ),
            Positioned(top: 40, left: 0, child: _backButton()),
          ],
        ),
      ),
    );
  }
}
class IntegerExample extends StatefulWidget {
  @override
  _IntegerExampleState createState() => _IntegerExampleState();
}

class _IntegerExampleState extends State<IntegerExample> {
  int currentHorizontalIntValue = 20;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NumberPicker(
          value: currentHorizontalIntValue,
          minValue: 0,
          maxValue: 100,
          step: 1,
          itemHeight: 50,
          axis: Axis.horizontal,
          onChanged: (value) =>
              setState(() => currentHorizontalIntValue = value),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.black26),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: Icon(Icons.remove),
              onPressed: () => setState(() {
                final newValue = currentHorizontalIntValue - 1;
                currentHorizontalIntValue = newValue.clamp(0, 100);
              }),
            ),
            Text('Current selected age: $currentHorizontalIntValue',),
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () => setState(() {
                final newValue = currentHorizontalIntValue + 1;
                currentHorizontalIntValue = newValue.clamp(0, 100);
              }),
            ),
          ],
        ),
      ],
    );
  }
}
