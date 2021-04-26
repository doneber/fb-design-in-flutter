import 'package:fb_design/screens/Home/components/story.dart';
import 'package:flutter/material.dart';

class StoriesContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, top: 9, bottom: 9),
      child: Row(
        children: [
          Story(),
          Story(),
          Story(),
        ],
      ),
    );
  }
}
