import 'package:flutter/material.dart';

class BasicIcon extends StatelessWidget {
  final typeIcon;
  final sizeIcon;
  final color;
  BasicIcon(this.typeIcon, this.sizeIcon, {this.color = 0xff2a303a});

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
        color: Color(this.color),
        borderRadius: BorderRadius.circular(100),
      ),
    );
  }
}
