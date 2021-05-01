import 'package:fb_design/screens/Home/components/story.dart';
import 'package:flutter/material.dart';

class StoriesContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, top: 9, bottom: 9),
      child: Row(
        children: [
          Story('Crear historia', 'assets/images/my_photo.jpg'),
          Story('Fernanda', 'https://picsum.photos/205'),
          Story('James', 'https://picsum.photos/206'),
          Story('Estefania', 'https://picsum.photos/207'),
        ],
      ),
    );
  }
}
