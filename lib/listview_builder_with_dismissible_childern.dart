import 'package:flutter/material.dart';

class ListViewBuilderAndDismissible extends StatelessWidget {
  const ListViewBuilderAndDismissible({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListViewBuilderAndDismissible"),
      ),
      body: ListView.separated(
        itemCount: 3,
        separatorBuilder: (context, index) => const SizedBox(height: 20,),
        // ClipRRect widget make the child respect The rounded border and add border Radius to the  Widget that have not
        itemBuilder: (context, index) => ClipRRect(
          clipBehavior: Clip.hardEdge,
          borderRadius: BorderRadius.circular(16),
          // this Widget make an action when you pull it right or left
          child: Dismissible(
            key: UniqueKey(),
            child: Container(color: Colors.amber, height: 100,),
            background: Container(
              color: Colors.red,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  SizedBox(width: 5,),
                  Icon(Icons.check_circle, color: Colors.white, size: 30,),
                  SizedBox(width: 5,),
                  Text(
                    'This is background',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                        color: Colors.white
                    ),
                  ),
                ],
              ),
            ),
            secondaryBackground: Container(
              color: Colors.greenAccent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(width: 5,),
                  Text(
                    'This is secondaryBackground',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                        color: Colors.white
                    ),
                  ),
                  const SizedBox(width: 5,),
                  Icon(Icons.delete_rounded, color: Colors.white, size: 30,),
                ],
              ),
            ),
            onDismissed: (direction){
              if(direction == DismissDirection.startToEnd) {
                print("The Direction from start to end");
              }else {
                print("The Direction from end to start");
              }
            },
          ),
        ),
      ),
    );
  }
}
