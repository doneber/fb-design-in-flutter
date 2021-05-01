import 'package:fb_design/screens/widgets/image_profile.dart';
import 'package:flutter/material.dart';

class Story extends StatelessWidget {
  final String title;
  final String photoUrl;
  final bool showMiniPhoto;
  Story(this.title, this.photoUrl, {this.showMiniPhoto = true});
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
                    image: NetworkImage(this.photoUrl),
                  ),
                ),
              ),
              if (this.showMiniPhoto)
                Positioned(
                  bottom: 0,
                  left: 30,
                  child: ImageProfile(this.photoUrl, 25),
                )
            ],
          ),
        ),
        Text(
          this.title,
          style: TextStyle(
            color: Colors.grey,
          ),
        )
      ],
    );
  }
}
