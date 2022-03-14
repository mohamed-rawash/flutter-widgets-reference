
import 'dart:math';

import 'package:flutter/material.dart';


class AnimatedContainerAnimation extends StatefulWidget {
  const AnimatedContainerAnimation({Key? key}) : super(key: key);

  @override
  _AnimatedContainerAnimationState createState() => _AnimatedContainerAnimationState();
}

class _AnimatedContainerAnimationState extends State<AnimatedContainerAnimation> {
  Random  _random = Random();
  double _width = 50;
  double _height = 50;
  Color _color = Colors.blue;
  BorderRadius _borderRadius = BorderRadius.circular(16);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedContainerAnimation'),
      ),
      body: Center(
        child: AnimatedContainer(
          width: _width,
          height: _height,
          duration: const Duration(seconds: 1),
          curve: Curves.easeIn,
          decoration: BoxDecoration(
            borderRadius: _borderRadius,
            color: _color,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_arrow, color: Colors.white, size: 32,),
        onPressed: () {
          setState(() {
            _width = _random.nextInt(300).toDouble();
            _height = _random.nextInt(300).toDouble();
            _color == Colors.green? _color =Colors.red :_color =Colors.green;
            _borderRadius = BorderRadius.circular(_random.nextInt(300).toDouble());
          });
        },
      ),
    );
  }
}
