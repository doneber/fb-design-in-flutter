import 'package:flutter/material.dart';

class ReactionIcon extends StatelessWidget {
  final icon;
  final bakckground_color;
  ReactionIcon(
    this.icon,
    this.bakckground_color,
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(
        this.icon,
        color: Colors.white,
        size: 12,
      ),
      padding: EdgeInsets.all(6),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white, width: 2.8),
        color: this.bakckground_color,
        borderRadius: BorderRadius.circular(100),
      ),
    );
  }
}
