import 'package:flutter/material.dart';

class BasicIcon extends StatelessWidget {
  final typeIcon;
  final sizeIcon;
  BasicIcon(this.typeIcon, this.sizeIcon);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.all(5),
      alignment: Alignment.center,
      child: Icon(
        this.typeIcon,
        color: Colors.white,
        size: this.sizeIcon,
      ),
      decoration: BoxDecoration(
        color: Color(0xff2a303a),
        borderRadius: BorderRadius.circular(100),
      ),
    );
  }
}
