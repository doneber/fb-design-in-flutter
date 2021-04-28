import 'package:fb_design/screens/widgets/image_profile.dart';
import 'package:flutter/material.dart';

class Story extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          child: Stack(
            children: [
              Container(
                margin: EdgeInsets.all(10),
                height: 75,
                width: 75,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage('assets/images/45@2x.png'),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 30,
                child: ImageProfile('assets/images/45.png', 25),
              )
            ],
          ),
        ),
        Text(
          'Title',
          style: TextStyle(
            color: Colors.grey,
          ),
        )
      ],
    );
  }
}
