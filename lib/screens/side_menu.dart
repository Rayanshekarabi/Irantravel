import 'package:flutter/material.dart';

class drawermenu extends StatefulWidget {
  @override
  _drawermenuState createState() => _drawermenuState();
}

class _drawermenuState extends State<drawermenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
              child: ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              
              accountName: new Text('rayan'),
              accountEmail: new Text('rayan.shekrabi@gmail.com'),
              currentAccountPicture: new CircleAvatar(
                backgroundImage: new NetworkImage(
                  'https://images.unsplash.com/photo-1497551060073-4c5ab6435f12?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1934&q=80'
                ),
              ),
            ),
            new ListTile(
             title: new Text('about us'), 
            ),
            new ListTile(
              title: new Text('Contact'),
            ),
            new ListTile(
              title:new Text('Social media')
            )
          ],
        ),
    );
  }
}