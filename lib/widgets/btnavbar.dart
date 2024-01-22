import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mind_map/features/assessment/assessment_screen.dart';
import 'package:mind_map/features/home/home_screen.dart';

class Btnavbar extends StatefulWidget {
  @override
  _BtnavbarState createState() => _BtnavbarState();
}

class _BtnavbarState extends State<Btnavbar> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(),
    const Text(
      'Bookings',
      style: TextStyle(
        fontSize: 35,
        fontWeight: FontWeight.bold,
      ),
    ),
    const AssessementScreen(),
    const Text(
      'Profile Page',
      style: TextStyle(
        fontSize: 35,
        fontWeight: FontWeight.bold,
      ),
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AnnotatedRegion(
        value: const SystemUiOverlayStyle(statusBarColor: Colors.white),
        child: Scaffold(
          body: Center(
            child: _widgetOptions.elementAt(_selectedIndex),
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                activeIcon: Icon(
                  Icons.home,
                  color: Color(0xff007FFF),
                ),
                icon: Icon(
                  Icons.home_outlined,
                  color: Colors.grey,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                activeIcon: Icon(
                  Icons.videocam,
                  color: Color(0xff007FFF),
                ),
                icon: Icon(
                  Icons.videocam_outlined,
                  color: Colors.grey,
                ),
                label: 'Sessions',
              ),
              BottomNavigationBarItem(
                activeIcon: Icon(
                  Icons.chat_bubble,
                  color: Color(0xff007FFF),
                ),
                icon: Icon(
                  Icons.chat_bubble_outline,
                  color: Colors.grey,
                ),
                label: 'Assessement',
              ),
              BottomNavigationBarItem(
                activeIcon: Icon(
                  Icons.person,
                  color: Color(0xff007FFF),
                ),
                icon: Icon(
                  Icons.person_outline,
                  color: Colors.grey,
                ),
                label: 'Profile',
              ),
            ],
            type: BottomNavigationBarType.fixed,
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.black,
            iconSize: 40,
            onTap: _onItemTapped,
            elevation: 5,
          ),
        ),
      ),
    );
  }
}
