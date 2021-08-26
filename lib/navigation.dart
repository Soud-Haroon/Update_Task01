import 'package:flutter/material.dart';
import 'package:update_task01/mainProfile.dart';

class Navigationbar extends StatefulWidget {
  @override
  _NavigationbarState createState() => _NavigationbarState();
}

class _NavigationbarState extends State<Navigationbar> {
  int _currentindex = 0;
  final tabs = [
    Center(
      child: MainProfile(),
    ),
    Center(
      child: Text('page2'),
    ),
    Center(
      child: Text('page3'),
    ),
    Center(
      child: Text('page4'),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currentindex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentindex,
        type: BottomNavigationBarType.fixed,
        fixedColor: Color(0xffbf2634),
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart),
            label: 'Performance',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_add),
            // title: Text('Requests'),
            label: 'Request',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz_outlined),
            label: 'More',
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentindex = index;
          });
        },
      ),
    );
  }
}