import 'package:flutter/material.dart';


class ExpandableListW extends StatefulWidget {
  const ExpandableListW({Key? key}) : super(key: key);

  @override
  _ExpandableListWState createState() => _ExpandableListWState();
}

class _ExpandableListWState extends State<ExpandableListW> {
  bool change = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expandable List'),
      ),
      body: Padding(
        padding: const  EdgeInsets.all(16),
        child: ListView(
          children:[
            ExpansionTile(
              leading: const Icon(Icons.email),
              trailing: !change? const Icon(Icons.arrow_downward):const Icon(Icons.arrow_upward_rounded),
              backgroundColor: Colors.greenAccent,
              childrenPadding: const  EdgeInsets.symmetric(horizontal: 20),
              title: const Text(
                'Your Acounts',
              ),
              onExpansionChanged: (val){
                setState(() {
                  change = val;
                });
              },
              children: const [
                ListTile(
                  title: Text(
                    'xxxxxxxxxxx@gmail.com'
                  ),
                  leading: Icon(Icons.email),
                ),
                Divider(color: Colors.grey),
                ListTile(
                  title: Text(
                      'xxxxxxxxxxx@gmail.com'
                  ),
                  leading: Icon(Icons.email),
                ),
                Divider(color: Colors.grey),
                ListTile(
                  title: Text(
                      'xxxxxxxxxxx@gmail.com'
                  ),
                  leading: Icon(Icons.email),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
