import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TweenAnimation extends StatefulWidget {
  const TweenAnimation({Key? key}) : super(key: key);

  @override
  _TweenAnimationState createState() => _TweenAnimationState();
}

class _TweenAnimationState extends State<TweenAnimation> {
  double _angle = 0;
  double _value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tween Animation'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TweenAnimationBuilder<double>(
              tween: Tween(begin: 0, end: _angle),
              duration: Duration(seconds: 1),
              child: Container(
                width: 300,
                height: 200,
                color: Colors.amber,
              ),
              builder: (_, angle, child) => Transform.rotate(
                angle: angle,
                child: child,
              ),
            ),

            Text('${(_value * (180 / pi)).round()}',
                style: const TextStyle(fontSize: 50)),
            Slider(
              value: _value,
              min: 0,
              max: 2 * pi,
              divisions: 4,
              onChanged: (val) {
                setState(() {
                  _value = val;
                  _angle = val;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
