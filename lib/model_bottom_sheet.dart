import 'package:flutter/material.dart';


class ModalBottomSheet extends StatelessWidget {
  const ModalBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ModelBottomSheet'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Show Model Bottom Sheet'),
          onPressed: () => modalBottomSheet(context),
        ),
      ),
    );
  }
}

Future modalBottomSheet (BuildContext context) {
  return showModalBottomSheet(context: context, builder: (context) => Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisSize: MainAxisSize.min,
    children: const [
      Text('title'),
      SizedBox(height: 50, width: double.infinity,),
      Text('body')
    ],
  ));
}