import 'package:flutter/material.dart';

class TapBar extends StatelessWidget {
  const TapBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: Text("This is my Tabs"),
          backgroundColor: Colors.greenAccent.withOpacity(0.3),
          elevation: 0.0,
          bottom: TabBar(
            tabs: const [
              Tab(child: Icon(Icons.twenty_two_mp),),
              Tab(child: Icon(Icons.twenty_two_mp),),
              Tab(child: Icon(Icons.twenty_two_mp),),
            ],
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorColor: Colors.black,
            indicatorWeight: 2.0,
            indicatorPadding: EdgeInsets.symmetric(horizontal: 2),
            labelStyle: TextStyle(
              color: Colors.white
            ),
            unselectedLabelColor: Colors.black,
            indicator: BoxDecoration(
              borderRadius:BorderRadius.circular(16),
              gradient: LinearGradient(colors: [Colors.red, Colors.green, Colors.blue]),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            Container(color: Colors.red,),
            Container(color: Colors.blue,),
            Container(color: Colors.green,),
          ],
        ),
      ),
    );
  }
}
