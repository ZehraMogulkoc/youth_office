import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:youth_office/Widget/custom_widgets.dart';
import 'package:youth_office/Pages/signup_screen.dart';
import 'package:youth_office/home_page.dart';
import 'package:youth_office/Pages/about_us_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';
  FirebaseAuth loginProvider = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: StreamBuilder<User?>(
          stream: loginProvider.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return HomePage();
            } else {
              return Stack(
                children: [
                  Positioned(
                      top: -height * .15,
                      bottom: -MediaQuery.of(context).size.width * .4,
                      child: CustomWidgets().beizerContainer(context)),
                  Positioned(
                      top: 20,
                      right: 20,
                      child: Image(
                          image: AssetImage("assets/agu_logo.png"),
                          height: 80)),
                  Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        opacity: .4,

                        // colorFilter: new ColorFilter.mode(Colors.red.withOpacity(0.2), BlendMode.dstATop),
                        image: AssetImage(
                            "assets/paul-wallez-csYbFa-h_V8-unsplash.jpg"),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: SafeArea(
                      child: Center(
                        child: CustomScrollView(
                          slivers: [
                            SliverFillRemaining(
                              hasScrollBody: false,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 100,
                                  ),
                                  CustomWidgets().title(),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 20, left: 20),
                                    child: TextFormField(
                                      textAlign: TextAlign.center,
                                      keyboardType: TextInputType.emailAddress,
                                      textInputAction: TextInputAction.next,
                                      decoration: InputDecoration(
                                        contentPadding:
                                            new EdgeInsets.symmetric(
                                                vertical: 15.0,
                                                horizontal: 10.0),
                                        prefixIcon: Icon(Icons.email),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.teal),
                                        ),
                                        labelText: "Email",
                                        labelStyle: TextStyle(
                                          fontFamily: 'Roboto',
                                        ),
                                        border: OutlineInputBorder(),
                                      ),
                                      onChanged: (value) {
                                        email = value;
                                      },
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 20, left: 20),
                                    child: TextFormField(
                                      textAlign: TextAlign.center,
                                      obscureText: true,
                                      decoration: InputDecoration(
                                        contentPadding:
                                            new EdgeInsets.symmetric(
                                                vertical: 15.0,
                                                horizontal: 10.0),
                                        prefixIcon: Icon(Icons.lock),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.teal),
                                        ),
                                        labelText: "Password",
                                        labelStyle: TextStyle(
                                          fontFamily: 'Roboto',
                                        ),
                                        border: OutlineInputBorder(),
                                      ),
                                      onChanged: (value) {
                                        password = value;
                                      },
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                    width: 30,
                                  ),
                                  SizedBox(height: 15),
                                  FlatButton(
                                    onPressed: () async {
                                      await loginProvider
                                          .signInWithEmailAndPassword(
                                              email: email, password: password);
                                    },
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50.0),
                                    ),
                                    color: Colors.red,
                                    padding:
                                        EdgeInsets.fromLTRB(70, 10, 70, 10),
                                    child: Text('Log In',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                        )),
                                  ),
                                  SizedBox(height: 15),
                                  FlatButton(
                                    onPressed: () {
                                      setState(() {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    SignUpPage()));
                                      });
                                    },
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50.0),
                                    ),
                                    color: Colors.red,
                                    padding:
                                        EdgeInsets.fromLTRB(70, 10, 70, 10),
                                    child: Text("Sign Up",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                        )),
                                  ),
                                  SizedBox(
                                    height: 80,
                                  ),
                                  FlatButton(
                                    onPressed: () {
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                        builder: (context) => AboutUs(),
                                      ));
                                    },
                                    child: Center(
                                      child: Text("About Us",
                                          style: TextStyle(
                                            color: Colors.red,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 24,
                                          )),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              );
            }
          }),
    );
  }
}
