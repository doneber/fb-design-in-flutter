import 'package:fb_design/screens/Home/components/header.dart';
import 'package:fb_design/screens/Home/components/my_state.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Header(),
          MyState(),
        ],
      ),
    );
  }
}
