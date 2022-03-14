import 'package:flutter/material.dart';


class CheckBoxW extends StatefulWidget {
  const CheckBoxW({Key? key}) : super(key: key);

  @override
  _CheckBoxWState createState() => _CheckBoxWState();
}

class _CheckBoxWState extends State<CheckBoxW> {
  bool egypt = false;
  bool cairo  = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Check Box And CheckBoxTile')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Text('Egypt'),
                Checkbox(
                  value: egypt,
                  onChanged: (val) => setState(() {
                    egypt = val!;
                  }),
                ),
                egypt? const Text('egypt chosen'): const Text('egypt removed')
              ],
            ),
            const SizedBox(height: 40),
            CheckboxListTile(title: const Text('Cairo'), subtitle: cairo? const Text('Cairo chosen'): const Text('Cairo removed'), value: cairo, onChanged: (val) => setState(() => cairo = val!),),
          ],
        ),
      ),
    );
  }
}
