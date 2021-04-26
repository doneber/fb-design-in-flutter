import 'package:flutter/material.dart';

class IconPoint extends StatelessWidget {
  final typeIcon;
  IconPoint(this.typeIcon);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.all(5),
            alignment: Alignment.center,
            child: Icon(
              this.typeIcon,
              color: Colors.white,
            ),
            decoration: BoxDecoration(
              color: Color(0xff2a303a),
              borderRadius: BorderRadius.circular(100),
            ),
          ),
          Positioned(
            top: 3,
            right: 3,
            child: Container(
              height: 9,
              width: 9,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(100),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
