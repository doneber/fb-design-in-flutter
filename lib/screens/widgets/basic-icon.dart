import 'package:flutter/material.dart';

class BasicIcon extends StatelessWidget {
  final typeIcon;
  BasicIcon(this.typeIcon);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
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
    );
  }
}
