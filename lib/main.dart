import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Color(0xFF303437),
      ),
      home: CurvedBottomNavBar(),
    );
  }
}

class CurvedBottomNavBar extends StatefulWidget {
  @override
  _CurvedBottomNavBarState createState() => _CurvedBottomNavBarState();
}

class _CurvedBottomNavBarState extends State<CurvedBottomNavBar> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    Page1(),
    Page2(),
    Page3(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Color(0xFF303437),
        color: Colors.white,
        buttonBackgroundColor: Colors.white,
        height: 60,
        animationDuration: Duration(milliseconds: 300),
        items: <Widget>[
          Icon(Icons.home, size: 30, color: Color(0xFF303437)),
          Icon(Icons.camera_alt, size: 30, color: Color(0xFF303437)),
          Icon(Icons.person, size: 30, color: Color(0xFF303437)),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Página Home',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Página Camera',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Página Profile',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}