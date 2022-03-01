import 'package:flutter/material.dart';


class GridViewW extends StatelessWidget {
  const GridViewW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('GridView')),
      body:  GridView(
        padding: EdgeInsets.all(10),
        children: List.generate(20, (index) => Container(color: Colors.amber, child: Center(child: Text("${index + 1} "),),)),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 250,
          childAspectRatio: 3/2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        physics: BouncingScrollPhysics(),
        // to make last element in the start
        reverse: true,
      ),
    );
  }
}
