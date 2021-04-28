import 'package:fb_design/screens/widgets/basic-icon.dart';
import 'package:fb_design/screens/widgets/reaction-icon.dart';
import 'package:flutter/material.dart';

class PostFoot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '30 comentarios - 5 compartidos',
          style: TextStyle(color: Colors.grey),
        ),
        Row(
          children: [
            BasicIcon(Icons.thumb_up,18),
            SizedBox(width: 10),
            BasicIcon(Icons.messenger_rounded,18),
            SizedBox(width: 10),
            BasicIcon(Icons.subdirectory_arrow_right_rounded,18),
            Spacer(),
            Text(
              'Mao Lop y 50 personas',
              style: TextStyle(color: Colors.grey, fontSize: 13),
            ),
            SizedBox(width: 10),
            Row(
              children: [
                ReactionIcon(Icons.thumb_up, Color(0xff1977F3)),
                ReactionIcon(Icons.favorite, Color(0xffF31954)),
              ],
            ),
          ],
        ),
        Divider(color: Colors.grey, thickness: 0.22,),
      ],
    );
  }
}
