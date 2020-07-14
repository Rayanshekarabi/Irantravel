import 'package:IRtravel/screens/signup_screen.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints veiwportConstraints) {
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 30),
            color: Color(0xff204969),
            width: double.infinity,
            child: SingleChildScrollView(
                          child: ConstrainedBox(
                constraints:
                    BoxConstraints(minHeight: veiwportConstraints.maxHeight),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Image.asset(
                      'assets/images/iran_travel.png',
                      height: 150,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      style: TextStyle(fontSize: 18, color: Colors.black54),
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'Email Address or Username',
                          contentPadding: const EdgeInsets.all(15),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(10),
                          )),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      obscureText: true,
                      style: TextStyle(fontSize: 18, color: Colors.black54),
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'Password',
                          contentPadding: const EdgeInsets.all(15),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(10),
                          )),
                    ),
                    SizedBox(height: 5,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        FlatButton(
                            onPressed: () {
                            },
                            padding: const EdgeInsets.only(left: 5),
                            child: Text(
                              'Forgot your password ?',
                              style: TextStyle(fontSize: 15, color: Colors.white70),
                            )),
                      ],
                    ),
                        SizedBox(
                          height: 5,
                        ),
                    FlatButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeScreen()));
                        },
                        shape: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white, width: 2),
                            borderRadius: BorderRadius.circular(20)),
                        padding: const EdgeInsets.fromLTRB(30, 20, 30, 20),
                        child: Text(
                          'SignIn',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        )),
                    SizedBox(
                      height: 1,
                    ),
                    FlatButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignupScreen()));
                        },
                        padding: const EdgeInsets.fromLTRB(30, 20, 30, 20),
                        child: Text(
                          'Signup',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        )),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
