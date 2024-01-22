import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mind_map/features/home/home_screen.dart';
import 'package:mind_map/features/profile/profile_screen.dart';
import 'package:mind_map/features/session/session_screen.dart';
import 'package:mind_map/model/user_details.dart';

class Btnavbar extends StatefulWidget {
  @override
  _BtnavbarState createState() => _BtnavbarState();
}

class _BtnavbarState extends State<Btnavbar> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    SessionScreen(),
    const Text(
      'Asessment',
      style: TextStyle(
        fontSize: 35,
        fontWeight: FontWeight.bold,
      ),
    ),
    UserPage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    UserDetails.name = "Kuldeep R";
    UserDetails.bgPhotoUrl =
        "https://i.pinimg.com/originals/6a/aa/ab/6aaaab354709ef2fa16fbd72299c8f55.jpg";
    UserDetails.profilePhotoUrl =
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRnVVc2VDK5p-WDPdl-BzF5TbI8DwokAdjHU-YU9C4gscDaFgRcWkBJQ35lHYH2SxOlG_s&usqp=CAU";
    UserDetails.dob = "08/01/2002";
    UserDetails.location = "Pune";
    UserDetails.tagLine = "I am a Software Engineer, hehhehhe";
    UserDetails.profession = "SDE";
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
