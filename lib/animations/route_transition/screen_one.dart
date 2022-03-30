import 'package:flutter/material.dart';
import 'package:widgets_reference/animations/route_transition/animation_route.dart';
import 'package:widgets_reference/animations/route_transition/screen_two.dart';


class ScreenOne extends StatefulWidget {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  _ScreenOneState createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen One'),
      ),
      body: Container(
        color: Colors.redAccent,
        child: Center(
          child: TextButton(
            child: Text('Go To Screen Two'),
            onPressed: (){
              Navigator.of(context).pushReplacement(addTwoAnimationRoute(child: const ScreenTwo()));
              setState(() {

              });
            },
          ),
        ),
      ),
    );
  }
}
