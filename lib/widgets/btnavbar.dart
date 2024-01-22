import 'package:flutter/material.dart';

class Btnavbar extends StatefulWidget {
  @override
  _BtnavbarState createState() => _BtnavbarState();
}

class _BtnavbarState extends State<Btnavbar> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    const Text(
      'Home',
      style: TextStyle(
        fontSize: 35,
        fontWeight: FontWeight.bold,
      ),
    ),
    const Text(
      'Bookings',
      style: TextStyle(
        fontSize: 35,
        fontWeight: FontWeight.bold,
      ),
    ),
    const Text(
      'Assessement',
      style: TextStyle(
        fontSize: 35,
        fontWeight: FontWeight.bold,
      ),
    ),
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
    return Scaffold(
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
              label: 'Wishlist',
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
              label: 'Chat',
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
          type: BottomNavigationBarType.shifting,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
          iconSize: 40,
          onTap: _onItemTapped,
          elevation: 5),
    );
  }
}
