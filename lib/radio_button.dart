import 'package:flutter/material.dart';

class RadioButtonW extends StatefulWidget {
  const RadioButtonW({Key? key}) : super(key: key);

  @override
  _RadioButtonWState createState() => _RadioButtonWState();
}

class _RadioButtonWState extends State<RadioButtonW> {
  String? country;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Radio Button And RadioListTile'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                const Text('Egypt'),
                Radio(
                  value: 'egypt',
                  groupValue: country,
                  onChanged: (String? val) => setState(() => country = val),
                )
              ],
            ),
            RadioListTile(
              title: const Text('Syria'),
              controlAffinity: ListTileControlAffinity.trailing,
              value: 'syria',
              groupValue: country,
              onChanged: (String? val) => setState(() => country = val),
            ),
            Text(country??'', style: const TextStyle(fontSize: 32, color: Colors.black),),
          ],
        ),
      ),
    );
  }
}
