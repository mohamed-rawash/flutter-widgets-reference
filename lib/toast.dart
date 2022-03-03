import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';


class Toast extends StatefulWidget {
  const Toast({Key? key}) : super(key: key);

  @override
  _ToastState createState() => _ToastState();
}

class _ToastState extends State<Toast> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Toast')),
      body: Center(child: TextButton(
        child: Text('Click To Show Toast'),
        style: TextButton.styleFrom(
          primary: Colors.black,
            backgroundColor: Colors.amber,
        ),
        onPressed: (){
          setState(() {
            showToast('This is normal toast with animation',
              context: context,
              animation: StyledToastAnimation.slideFromLeft,
              reverseAnimation: StyledToastAnimation.slideFromLeft,
              position: StyledToastPosition.bottom,
              animDuration: Duration(seconds: 1),
              duration: Duration(seconds: 4),
              curve: Curves.elasticOut,
              reverseCurve: Curves.linear,
            );
          });
        },
      ),),
    );
  }
}