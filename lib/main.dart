import 'package:IRtravel/screens/Splash_screen.dart';
import 'package:IRtravel/screens/login_screen.dart';
import 'package:IRtravel/screens/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:IRtravel/screens/home_screen.dart';
void main() =>runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title:'IRtravel' ,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xff3EBAce),
        accentColor: Color(0xFFd8ecf1),
        scaffoldBackgroundColor: Color(0xfff3f5f7)
      ),
      // routes: {
      //   "/splash_screen":(context) => new Directionality(textDirection: TextDirection.ltr, child: SplashScreen()),
      //   "/home":(context) => new Directionality(textDirection: TextDirection.ltr, child: HomeScreen()),
      // },
      home: SplashScreen(),
    );
  }


}




