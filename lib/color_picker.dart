import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

//flutter_colorpicker: ^1.0.3
class ColorPick extends StatefulWidget {
  const ColorPick({Key? key}) : super(key: key);

  @override
  _ColorPickState createState() => _ColorPickState();
}

class _ColorPickState extends State<ColorPick> {
  Color currentColor = Colors.amber;
  List<Color> _avilableColor = [Colors.amber, Colors.cyan, Colors.cyanAccent, Colors.greenAccent];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Color Picker', style: TextStyle(color: currentColor),),),
      body: Center(
        child: TextButton(
          child: Text('Chose Color'),
          onPressed: () {
            showDialog(context: context, builder: (_) => AlertDialog(
              backgroundColor: Colors.black.withOpacity(0.3),
              title: Center(child: Text('Color', style: TextStyle(color: Colors.white, fontSize: 24),)),
              content: SizedBox(
                height: 100,
                child: BlockPicker(
                  pickerColor: currentColor,
                  availableColors: _avilableColor,
                  onColorChanged: (color){
                    setState(() {
                      currentColor = color;
                    });
                  },
                ),
              ),
            ));
          }
        ),
      ),
    );
  }
}
