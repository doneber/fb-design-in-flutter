import 'package:fb_design/screens/Home/components/Commend.dart';
import 'package:fb_design/screens/Home/components/my_state.dart';
import 'package:fb_design/screens/Home/components/post_foot.dart';
import 'package:fb_design/screens/Home/components/post_header.dart';
import 'package:fb_design/screens/widgets/basic-icon.dart';
import 'package:fb_design/screens/widgets/image_profile.dart';
import 'package:fb_design/screens/widgets/reaction-icon.dart';
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
          PostHeader(),
          Container(
            margin: EdgeInsets.symmetric(vertical: 6),
            child: Text(
              'Lorem ipsum dolor lorem ipsum dolor lorem ipsum dolor lorem ipsum dolor.',
            ),
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
          PostFoot(),
          Commend(),
        ],
      ),
    );
  }
}
