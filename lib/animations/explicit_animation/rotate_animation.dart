import 'package:flutter/material.dart';

class RotateAnimation extends StatefulWidget {
  const RotateAnimation({Key? key}) : super(key: key);

  @override
  _RotateAnimationState createState() => _RotateAnimationState();
}

class _RotateAnimationState extends State<RotateAnimation>
    with SingleTickerProviderStateMixin {
  AnimationController? _controller;
  Animation<double>? _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: const Duration(seconds: 1))..repeat();
    _animation = CurvedAnimation(parent: _controller!, curve: Curves.linear)
;  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("rotate Transition"),
      ),
      body: Center(
        child: RotationTransition(
          turns: _animation!,
          child: const FlutterLogo(size: 50,),
        ),
      ),
    );
  }
}
