
import 'package:flutter/material.dart';

class ScrollControllerWidget extends StatefulWidget {

  @override
  _ScrollControllerWidgetState createState() => _ScrollControllerWidgetState();
}

class _ScrollControllerWidgetState extends State<ScrollControllerWidget> {
  ScrollController? _controller;
  var showButton = 0.0;
  @override
  void initState() {
    super.initState();
    _controller = new ScrollController();
    _controller!.addListener(() {
      setState(() {
        showButton = _controller!.offset;
      });
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          ListView(
            controller: _controller,
            children: [
              ...List.generate(21, (index) => Container(
                height: 100,
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                color: index % 2 == 0? Colors.red:Colors.green,
              ),),
            ],
          ),
          if(showButton != null && showButton > 100)
          Positioned(
              right: 10,
                bottom: 10,
                child: FloatingActionButton(
                  child: Icon(Icons.arrow_upward, color: Colors.white,),
                  onPressed: (){
                    _controller!.jumpTo(0.0);
                  },
                ),
            ),
        ],
      ),
    );
  }
}
