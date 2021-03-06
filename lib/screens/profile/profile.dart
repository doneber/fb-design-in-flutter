import 'package:fb_design/Models/Friend.dart';
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
          Ink(
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xff1977F3), width: 2.0),
              borderRadius: BorderRadius.circular(25),
            ),
            width: 120,
            height: 43,
            child: InkWell(
              onTap: null,
              child: OutlinedButton(
                onPressed: () {},
                child: Text('Llamar'),
                style: OutlinedButton.styleFrom(
                  primary: Color(0xff1977F3),
                ),
              ),
            ),
          ),
          Ink(
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xff222833), width: 2.0),
              borderRadius: BorderRadius.circular(25),
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
          Story(
            'Colección',
            'https://picsum.photos/209',
            showMiniPhoto: false,
          ),
          Story(
            'Colección',
            'https://picsum.photos/210',
            showMiniPhoto: false,
          ),
          Story(
            'Colección',
            'https://picsum.photos/211',
            showMiniPhoto: false,
          ),
        ],
      ),
    );
    var friends = [
      Friend('Jose Noel', 'https://picsum.photos/201'),
      Friend('Elvis Cocho', 'https://picsum.photos/202'),
      Friend('Itela Creiste', 'https://picsum.photos/203'),
      Friend('Esteban Quito', 'https://picsum.photos/204'),
      Friend('Jhony Bravo', 'https://picsum.photos/205'),
    ];
    final Widget friendsWidget = Container(
      margin: EdgeInsets.symmetric(horizontal: 27),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Amigos ',
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
          SizedBox(height: 14),
          Container(
            height: 140,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                for (final friend in friends)
                  Container(
                    margin: EdgeInsets.all(7),
                    child: Column(
                      children: [
                        ImageProfile(friend.photoUrl, 65),
                        SizedBox(height: 5),
                        Text(
                          friend.name,
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                  )
              ],
            ),
          )
        ],
      ),
    );
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
            friendsWidget,
          ],
        ),
      ),
    );
  }
}
