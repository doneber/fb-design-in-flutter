import 'package:fb_design/screens/widgets/image_profile.dart';
import 'package:flutter/material.dart';

class MyState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff232935),
      padding: EdgeInsets.all(10),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ImageProfile('assets/images/45.png', 26),
            Text(
              '¿Qué estas pensando, Eber?',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w100,
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              margin: EdgeInsets.all(18),
              child: Text(
                '😃',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
