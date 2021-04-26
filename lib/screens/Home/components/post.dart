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
          Image.network(
            // TODO: Copy an image in assets to put here
            'https://www.port.ac.uk/-/media/images/news-events-and-blogs/news/2019/july/puppy-dog-eyes-muscles-600x400.jpg',
            fit: BoxFit.cover,
            height: 100,
            width: 100,
          ),
        ],  
      ),
    );
  }
}
