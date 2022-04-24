import 'package:flutter/material.dart';


class DropDownAndListTile extends StatefulWidget {
  DropDownAndListTile({Key? key}) : super(key: key);

  @override
  State<DropDownAndListTile> createState() => _DropDownAndListTileState();
}

class _DropDownAndListTileState extends State<DropDownAndListTile> {
  List<String> repeatList = ['None', 'Daily', 'Weekly', 'Monthly', 'one', 'aily', 'eekly', 'onthly'];
  String _selectedRepeat = 'None';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ListTile(
          title: const Text('Choose:', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),),
          subtitle: Text(_selectedRepeat, style: TextStyle(fontSize: 26,),),
          leading: const Icon(Icons.opacity, color: Colors.white, size: 24,),
          trailing: DropdownButton(
            menuMaxHeight: 200,
            items: repeatList
                .map(
                  (item) => DropdownMenuItem(
                child: Text(
                  item,
                  style: Theme.of(context).textTheme.headline5,
                ),
                value: item,
              ),
            )
                .toList(),
            icon: const Icon(Icons.keyboard_arrow_down_sharp,
                color: Colors.white, size: 32,),
            iconSize: 24,
            style: Theme.of(context).textTheme.headline5,
            elevation: 8,
            autofocus: false,
            underline: Container(height: 0),
            borderRadius: BorderRadius.circular(16),
            dropdownColor: Colors.cyan,
            onChanged: (String? newValue) {
              setState(() {
                _selectedRepeat = newValue!;
                print('*-* ' * 10);
                print(_selectedRepeat);
                print('*-* ' * 10);
              });
            },
          ),
          contentPadding: EdgeInsets.all(20),
          tileColor: Colors.black,
          textColor: Colors.amber,
          enableFeedback: true,
        ),
      ),
    );
  }
}
