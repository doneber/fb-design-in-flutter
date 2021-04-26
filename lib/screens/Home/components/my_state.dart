import 'package:fb_design/screens/widgets/image_profile.dart';
import 'package:flutter/material.dart';

class MyState extends StatelessWidget {
  buttonState(icon, text, color) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xff292f3b),
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
      margin: EdgeInsets.symmetric(horizontal: 5),
      child: Row(
        children: [
          Icon(
            icon,
            color: color,
            size: 17,
          ),
          SizedBox(width: 8),
          Text(text),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xff232935),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(16),
          bottomRight: Radius.circular(16),
        ),
      ),
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
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
          Row(
            children: [
              buttonState(Icons.camera_enhance, 'Fotos', Colors.greenAccent),
              buttonState(Icons.videocam_rounded, 'En vivo', Colors.redAccent),
              buttonState(
                  Icons.remove_red_eye, 'Video corto', Colors.blueAccent),
            ],
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
