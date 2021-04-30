import 'package:fb_design/screens/Home/components/story.dart';
import 'package:fb_design/screens/widgets/image_profile.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Widget header = Container(
        child: Column(
      children: [
        Stack(children: [
          Column(
            children: [
              Image.asset(
                'assets/images/my_photo.jpg',
                fit: BoxFit.cover,
                height: 200,
                width: double.infinity,
              ),
              Container(
                color: Color(0xff080E1D),
                width: double.infinity,
                height: 70,
              ),
            ],
          ),
          Center(
            child: Positioned(
              child: Column(
                children: [
                  SizedBox(height: 140),
                  ImageProfile('assets/images/my_photo.jpg', 120),
                ],
              ),
            ),
          ),
        ]),
        Text(
          'Eber Ed',
          style: TextStyle(
            fontSize: 30,
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          'Eber Ed | Diseñador UI/UX | Developer',
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey,
          ),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    ));
    final Widget buttons = Container(
      margin: EdgeInsets.symmetric(horizontal: 27),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ConstrainedBox(
            constraints: BoxConstraints.tightFor(width: 143, height: 43),
            child: ElevatedButton.icon(
                icon: Icon(Icons.messenger_outline_rounded),
                onPressed: () {},
                label: Text('Mensaje'),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff1977F3),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(26.0),
                  ),
                )),
          ),
          ConstrainedBox(
            constraints: BoxConstraints.tightFor(width: 143, height: 43),
            child: OutlinedButton(
              onPressed: () {},
              child: Text('Llamar'),
              style: OutlinedButton.styleFrom(
                primary: Color(0xff1977F3),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(26.0),
                  side: BorderSide(color: Colors.blue),
                ),
              ),
            ),
          ),
          Ink(
            decoration: ShapeDecoration(
              color: Color(0xff1977F3),
              shape: CircleBorder(),
            ),
            child: IconButton(
              icon: Icon(Icons.more_horiz_rounded),
              color: Colors.white,
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
    final Widget info = Container(
      margin: EdgeInsets.symmetric(horizontal: 27),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 5),
          Row(
            children: [
              Icon(
                Icons.home,
                color: Colors.grey,
                size: 17,
              ),
              SizedBox(width: 5),
              Text('Vive en Todas partes por siempre y siempre'),
            ],
          ),
          SizedBox(height: 5),
          Row(
            children: [
              Icon(
                Icons.timer,
                color: Colors.grey,
                size: 17,
              ),
              SizedBox(width: 5),
              Text('Se unió en: Septiempre de 2007'),
            ],
          ),
          SizedBox(height: 5),
          Row(
            children: [
              Icon(
                Icons.info,
                color: Colors.grey,
                size: 17,
              ),
              SizedBox(width: 5),
              Text('Ver mas información de Eber'),
            ],
          ),
        ],
      ),
    );
    final Widget storiesOrSomethingLike = Container(
      margin: EdgeInsets.symmetric(horizontal: 27),
      child: Row(
        children: [
          Story(),
          Story(),
          Story(),
        ],
      ),
    );
    final Widget friends = Container(
      margin: EdgeInsets.symmetric(horizontal: 27),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Amigos',
                style: TextStyle(
                  fontSize: 22,
                ),
              ),
              Text(
                '(1024 amigos)',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              Spacer(),
              OutlinedButton(
                onPressed: () {},
                child: Text('Ver todos'),
                style: OutlinedButton.styleFrom(
                  primary: Color(0xff1977F3),
                ),
              )
            ],
          ),
          Row(
            children: [
              ImageProfile('assets/images/my_photo.jpg', 65),
              ImageProfile('assets/images/45.png', 65),
              ImageProfile('assets/images/45.png', 65),
              ImageProfile('assets/images/45.png', 65),
            ],
          ),
        ],
      ),
    );
    return Scaffold(
      body: Column(
        children: [
          header,
          buttons,
          Divider(
            color: Colors.grey,
            thickness: 0.45,
          ),
          info,
          storiesOrSomethingLike,
          Divider(
            color: Colors.grey,
            thickness: 0.45,
          ),
          friends,
        ],
      ),
    );
  }
}
