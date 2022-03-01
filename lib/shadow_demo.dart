import 'package:flutter/material.dart';


class ShadowDemo extends StatefulWidget {
  @override
  _ShadowDemoState createState() => _ShadowDemoState();
}

class _ShadowDemoState extends State<ShadowDemo> {
  var _image = NetworkImage('https://placebear.com/300/300');

  var _opacity = 1.0;
  var _xOffset = 0.0;
  var _yOffset = 0.0;
  var _blurRadius = 0.0;
  var _spreadRadius = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ShadowDemo')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFF0099EE),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, _opacity),
                        offset: Offset(_xOffset, _yOffset),
                        blurRadius: _blurRadius,
                        spreadRadius: _spreadRadius,
                      )
                    ],
                  ),
                  child: Image(image:_image,),
                ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 80.0),
                child: Column(
                  children: <Widget>[
                    Spacer(),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text('Change Opacity:'),
                        Slider(
                          value: _opacity,
                          min: 0.0,
                          max: 1.0,
                          onChanged: (newValue) =>
                          {
                            setState(() => _opacity = newValue)
                          },
                        ),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text('Change XOffset(position):'),
                        Slider(
                          value: _xOffset,
                          min: -100,
                          max: 100,
                          onChanged: (newValue) =>
                          {
                            setState(() => _xOffset = newValue)
                          },
                        ),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text('Change YOffset(position):'),
                        Slider(
                          value: _yOffset,
                          min: -100,
                          max: 100,
                          onChanged: (newValue) =>
                          {
                            setState(() => _yOffset = newValue)
                          },
                        ),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text('Change BlurRadius:'),
                        Slider(
                          value: _blurRadius,
                          min: 0,
                          max: 100,
                          onChanged: (newValue) =>
                          {
                            setState(() => _blurRadius = newValue)
                          },
                        ),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text('Change SpreadRadius:'),
                        Slider(
                          value: _spreadRadius,
                          min: 0,
                          max: 100,
                          onChanged: (newValue) =>
                          {
                            setState(() => _spreadRadius = newValue)
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}