import 'package:fb_design/screens/widgets/image_profile.dart';
import 'package:flutter/material.dart';

class Commend extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              ImageProfile('assets/images/45.png', 33),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Danieal Fernández',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    'Lorem ipsum dolor cuantom magic.',
                    style: TextStyle(color: Colors.grey),
                    textAlign: TextAlign.start,
                  ),
                  Row(
                    children: [
                      Text('Me gusta'),
                      SizedBox(width: 30),
                      Text('Responder'),
                    ],
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
