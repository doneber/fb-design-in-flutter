import 'package:flutter/material.dart';

class ImageProfile extends StatelessWidget {
  String srcImage;
  ImageProfile(this.srcImage);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      width: 34,
      height: 34,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white,
          width: 1.8,
        ),
        color: Colors.blueGrey,
        borderRadius: BorderRadius.circular(100),
        image: DecorationImage(
          image: AssetImage(
            this.srcImage,
          ),
        ),
      ),
    );
  }
}
