import 'package:flutter/material.dart';


class GridViewBuilder extends StatelessWidget {
  const GridViewBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('GridViewBuilder')),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: MediaQuery.of(context).size.width,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
        ),
        itemBuilder: (context, index) => Container(
          height: 300,
          decoration: BoxDecoration(
            color: Colors.cyan,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                spreadRadius: 2,
                blurRadius: 20,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ]
          ),
        ),
        itemCount: 16,
        padding: EdgeInsets.all(16),
        physics: BouncingScrollPhysics(),
      ),
    );
  }
}
