import 'package:flutter/material.dart';


class PageViewWidget extends StatelessWidget {
  const PageViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PageController controller = PageController(initialPage: 2, viewportFraction: 0.9);
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            height: 200,
            child: PageView(
              controller: controller,
              children: [
                Container(color: Colors.red,),
                Container(color: Colors.blue,),
                Container(color: Colors.green,),
                Container(color: Colors.red,),
                Container(color: Colors.blue,),
                Container(color: Colors.green,),
              ],
            ),
          ),
          TextButton(
            child: Text('Go To Last Page'),
            onPressed: (){
              controller.animateToPage(-0, duration: Duration(seconds: 3), curve: Curves.easeIn);
            },
          ),
        ],
      ),
    );
  }
}
