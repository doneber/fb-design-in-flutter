import 'package:fb_design/screens/Home/components/my_state.dart';
import 'package:fb_design/screens/widgets/basic-icon.dart';
import 'package:fb_design/screens/widgets/image_profile.dart';
import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.all(10),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xff222833),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
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
          ),
          Text(
            'Lorem ipsum dolor lorem ipsum dolor lorem ipsum dolor lorem ipsum dolor.',
          ),
          Card(
            margin: EdgeInsets.only(bottom: 10, top: 10),
            // TODO: fix this rounded border
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
            child: Image(
              image: AssetImage(
                'assets/images/post_dog.jpg',
              ),
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
