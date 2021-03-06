import 'package:flutter/material.dart';

class SliderWidget extends StatefulWidget {
  const SliderWidget({Key? key}) : super(key: key);

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {

  double val = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              '${val.round()}',
              style: const TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 40),
            Slider(
              min: 0.0,
              max: 100.0,
              divisions: 20,
              thumbColor: Colors.red,
              activeColor: Colors.green,
              inactiveColor: Colors.greenAccent,
              label: 'Moo',
              value: val,
              onChanged: (value){
                setState(() {
                  val = value;
                  print(val);
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
