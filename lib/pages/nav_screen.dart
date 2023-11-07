import 'package:demo_app/pages/explore.dart';
import 'package:demo_app/pages/message_screen.dart';
import 'package:demo_app/pages/notification_screen.dart';
import 'package:demo_app/pages/profile_screen.dart';
import 'package:demo_app/pages/trip_screen.dart';
import 'package:flutter/material.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({super.key});

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  int _selectIndex = 0;

  final _screens = [
    HomePage(),
    TripScreen(),
    MessageScreen(),
    NotificationScreen(),
    ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _screens[_selectIndex],
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
              child: Container(
                height: 70,
                  child: bottomNavigationBar
              )
          )
        ],
      ),
    );
  }

  Widget get bottomNavigationBar {
    return ClipRRect(
      borderRadius: const BorderRadius.vertical(
        top: Radius.elliptical(230, 20)
      ),
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectIndex,
        onTap: (i) => setState(() => _selectIndex = i),
        showSelectedLabels: true,
        showUnselectedLabels: false,
        selectedItemColor: Color(0xff00CEA6),
        unselectedItemColor: Color(0xffAFAFAF),
        selectedLabelStyle: const TextStyle(
          color: Color(0xff00CEA6),
        ),
        unselectedLabelStyle: const TextStyle(
          color: Color(0xffAFAFAF),
        ),
        items: [
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/navigation/explore.png'),size: 22,),
              label: 'Explore'
          ),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/navigation/location.png'),size: 22,),
              label: 'Trip'
          ),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/navigation/message.png'),size: 22,),
              label: 'Chat'
          ),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/navigation/bell.png'),size: 22,),
              label: 'Notification'
          ),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/navigation/user.png'),size: 22,),
              label: 'Profile'
          ),
        ],
      ),
    );
  }
}
