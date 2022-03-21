
import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';


class Bars extends StatefulWidget {
  const Bars({Key? key}) : super(key: key);

  @override
  _BarsState createState() => _BarsState();
}

class _BarsState extends State<Bars> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              child: Text('Show Flush Bar'),
              onPressed: () => showFlushBar(context: context),
            ),ElevatedButton(
              child: Text('Show Snack Bar'),
              onPressed: () {
                setState(() {
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('This is a snak bar'),
                        backgroundColor: Colors.greenAccent,
                        elevation: 10.0,
                        padding: EdgeInsets.all(16),
                        margin: EdgeInsets.symmetric(vertical: 12, horizontal: 8),
                        // width: double.infinity,
                        shape: const StadiumBorder(),
                        behavior: SnackBarBehavior.floating,
                        action: SnackBarAction(
                          label: 'Action',
                          onPressed: (){
                            setState(() {
                              Navigator.pop(context);
                            });
                          },
                        ),
                        duration: Duration(seconds: 8),
                        onVisible: (){
                          setState(() {
                            print('visible');
                          });
                        },
                        dismissDirection: DismissDirection.startToEnd,
                      )
                  );
                });
              },
            ),

          ],
        ),
      ),
    );
  }
}

showFlushBar({required BuildContext context}){
  return  Flushbar(
    message: "لوريم إيبسوم هو ببساطة نص شكلي يستخدم في صناعة الطباعة والتنضيد",
    icon: Icon(
      Icons.info_outline,
      size: 28.0,
      color: Colors.blue[300],
    ),
    margin: EdgeInsets.all(6.0),
    flushbarStyle: FlushbarStyle.FLOATING,
    flushbarPosition: FlushbarPosition.TOP,
    textDirection: Directionality.of(context),
    borderRadius: BorderRadius.circular(12),
    duration: Duration(seconds: 3),
    leftBarIndicatorColor: Colors.blue[300],
  )..show(context);
}


