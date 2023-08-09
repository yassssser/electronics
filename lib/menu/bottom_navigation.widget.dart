import 'package:electronic/home/home.page.dart';
import 'package:flutter/material.dart';

class BottomNavigationWidget extends StatefulWidget {
  BottomNavigationWidget({Key? key}) : super(key: key);

  @override
  State<BottomNavigationWidget> createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  int _index = 0;

  final tabs = [
    HomePage(),
    Container(),
    Container(),
    Container(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        elevation: 6,
        currentIndex: _index,
        selectedFontSize: 14,
        unselectedFontSize: 12,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.deepPurple,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        enableFeedback: true,
        items: [
          BottomNavigationBarItem(
              label: "Home", icon: Image.asset("assets/icons/home.png")),
          BottomNavigationBarItem(
              label: "Favorites", icon: Image.asset("assets/icons/heart.png")),
          BottomNavigationBarItem(
              label: "Notifications",
              icon: Image.asset("assets/icons/bell.png")),
          BottomNavigationBarItem(
              label: "Profile", icon: Image.asset("assets/icons/user.png")),
        ],
        onTap: (idx) {
          setState(() {
            _index = idx;
          });
        },
      ),
      body: tabs[_index],
    );
  }
}
