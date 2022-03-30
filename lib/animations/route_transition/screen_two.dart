import 'package:flutter/material.dart';
import 'package:widgets_reference/animations/route_transition/screen_one.dart';

import 'animation_route.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({Key? key}) : super(key: key);

  @override
  _ScreenTwoState createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen Two'),
      ),
      body: Container(
        color: Colors.greenAccent,
        child: Center(
          child: TextButton(
            child: Text('Go To Screen One'),
            onPressed: (){
              Navigator.of(context).pushReplacement(addTwoAnimationRoute(child: ScreenOne()));
              setState(() {

              });
            },
          ),
        ),
      ),
    );
  }
}