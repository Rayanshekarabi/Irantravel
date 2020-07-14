import 'package:IRtravel/screens/destination_screen.dart';
import 'package:IRtravel/screens/login_screen.dart';
import 'package:IRtravel/widgets/destination_carousel.dart';
import 'package:IRtravel/widgets/hotel_carousel.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:IRtravel/screens/side_menu.dart';
import 'dart:async';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  int _currentTab = 0;
  List<IconData> _icons = [
    FontAwesomeIcons.plane,
    FontAwesomeIcons.bed,
    FontAwesomeIcons.walking,
    FontAwesomeIcons.biking
  ];

  Widget _buildIcon(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          color: _selectedIndex == index
              ? Theme.of(context).accentColor
              : Color(0xffe7ebee),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Icon(_icons[index],
            size: 25,
            color: _selectedIndex == index
                ? Theme.of(context).primaryColor
                : Color(0xffb4c1c4)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Color(0xfff3f5f7),
        title: new Text(
          'IranTravel',
          style: TextStyle(),
        ),
        centerTitle: true,
        elevation: 0,
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: new IconButton(icon: Icon(Icons.exit_to_app),
            onPressed:(){
              Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => LoginScreen()));;
            }
            ),
          )
        ],
      ),
      drawer: drawermenu(),
      body: SafeArea(
          child: ListView(
        padding: const EdgeInsets.symmetric(vertical: 30),
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 120),
            child: new Text(
              'What you would like to find?',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
              maxLines: 2,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: _icons
                  .asMap()
                  .entries
                  .map(
                    (MapEntry map) => _buildIcon(map.key),
                  )
                  .toList()),
          SizedBox(
            height: 20,
          ),
          DestinationCarousel(),
          SizedBox(
            height: 20,
          ),
          HotelCarousel(),
        ],
      )),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentTab,
        onTap: (int value) {
          setState(() {
            _currentTab = value;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                size: 30,
              ),
              title: SizedBox.shrink()),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.bookmark_border,
                size: 30,
              ),
              title: SizedBox.shrink()),
          BottomNavigationBarItem(
              icon: CircleAvatar(
                radius: 15,
                backgroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1497551060073-4c5ab6435f12?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1934&q=80'),
              ),
              title: SizedBox.shrink()),
        ],
      ),
    );
  }
}
