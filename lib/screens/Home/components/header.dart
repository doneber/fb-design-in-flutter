import 'package:fb_design/screens/widgets/basic-icon.dart';
import 'package:fb_design/screens/widgets/icon_point.dart';
import 'package:fb_design/screens/widgets/image_profile.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final facebookLogo = Container(
    height: 33,
    width: 33,
    alignment: Alignment.bottomCenter,
    child: Text(
      'f',
      style: TextStyle(
        color: Colors.white,
        fontSize: 44,
        fontWeight: FontWeight.bold,
      ),
    ),
    decoration: BoxDecoration(
      color: Color(0xff1977F3),
      borderRadius: BorderRadius.circular(100),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff232935),
      padding: EdgeInsets.all(10),
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          facebookLogo,
          Spacer(),
          BasicIcon(Icons.search_rounded,24),
          IconPoint(Icons.notifications_rounded),
          BasicIcon(Icons.messenger,24),
          ImageProfile('assets/images/45.png', 34)
        ],
      ),
    );
  }
}
