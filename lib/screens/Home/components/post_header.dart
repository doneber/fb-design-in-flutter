import 'package:fb_design/screens/widgets/basic-icon.dart';
import 'package:fb_design/screens/widgets/image_profile.dart';
import 'package:flutter/material.dart';

class PostHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ImageProfile('assets/images/45.png', 40),
        Container(
          margin: EdgeInsets.only(left: 10, right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Danieal Fernández Ramoz',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Hace 3 dias',
                style: TextStyle(color: Colors.grey),
                textAlign: TextAlign.start,
              )
            ],
          ),
        ),
        BasicIcon(Icons.control_point_sharp)
      ],
    );
  }
}
