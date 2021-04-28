import 'package:fb_design/screens/widgets/image_profile.dart';
import 'package:flutter/material.dart';

class Commend extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(height: 5),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ImageProfile('assets/images/45.png', 33),
              SizedBox(width: 5),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Danieal Fernández',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Lorem ipsum dolor cuantom magic.',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  SizedBox(height: 6),
                  Row(
                    children: [
                      OutlinedButton(
                        onPressed: () {},
                        child: Text('Me gusta'),
                        style: OutlinedButton.styleFrom(
                          primary: Color(0xff1977F3),
                        ),
                      ),
                      OutlinedButton(
                        onPressed: () {},
                        child: Text('Responder'),
                        style: OutlinedButton.styleFrom(
                          primary: Color(0xff1977F3),
                        ),
                      ),
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
