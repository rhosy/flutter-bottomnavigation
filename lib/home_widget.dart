import 'package:flutter/material.dart';
import 'package:flutter_bottomnavigation/home.dart';
import 'messages.dart';
import 'profile.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _currentIndex = 0;
  final List<Widget> _children = [
    HomePage(),
    Messages(),
    Profile()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Bottom Navigation"),
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: new BottomNavigationBar(
          onTap: onTapTapped,
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(icon: new Icon(Icons.home), title: new Text('Home')),
            BottomNavigationBarItem(icon: new Icon(Icons.message), title: new Text('Message')),
            BottomNavigationBarItem(icon: new Icon(Icons.person), title: new Text('Profile'))
          ]
      ),
    );
  }

  void onTapTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
