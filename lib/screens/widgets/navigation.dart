import 'package:flutter/material.dart';

class Navigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.ondemand_video_rounded),
          label: 'Watch',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart_rounded),
          label: 'Buy',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.people),
          label: 'Friends',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.view_module_rounded),
          label: 'Menu',
        ),
      ],
      selectedItemColor: Color(0xff1977F3),
    );
  }
}
