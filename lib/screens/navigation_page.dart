import 'package:flutter/material.dart';
import 'package:alarm/const/color.dart';
//import 'package:alarm/styles/text_style.dart';
//import 'package:ionicons/ionicons.dart';
import 'package:alarm/screens/home_page.dart';
import 'package:alarm/screens/profile_page.dart';
import 'package:alarm/screens/chat_page.dart';

class NavigationPage extends StatefulWidget {
  @override
  _NavigationPageState createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  int _selectedIndex = 0;

  final _widgetOptions = [
    HomePage(),
    ProfilePage(),
  ];

  void _onTabItem(int index) {
    if (mounted) {
      setState(() {
        _selectedIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: SizedBox(
        height: 65,
        child: BottomNavigationBar(
          backgroundColor: cDongker,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: cWhite,
          unselectedItemColor: Colors.grey[500],
          currentIndex: _selectedIndex,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                // ignore: deprecated_member_use
                title: Text(
                  'Home',
                  //style: sBottomNavigationStyle(),
                )),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline),
                // ignore: deprecated_member_use
                title: Text(
                  'Profile',
                  //style: sBottomNavigationStyle(),
                )),
          ],
          onTap: (index) {
            _onTabItem(index);
          },
        ),
      ),
      floatingActionButton: SizedBox(
        height: 80,
        width: 80,
        child: Container(
          child: FloatingActionButton(
            backgroundColor: cDarkMaroon,
            child: Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                border: Border.all(width: 0.5, color: cDarkMaroon),
              ),
              child: Icon(
                Icons.message,
                size: 35.0,
                color: cWhite,
              ),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ChatPage()),
              );
            },
            tooltip: 'Scan QR Code',
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
