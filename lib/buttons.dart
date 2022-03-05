import 'package:flutter/material.dart';


class Buttons extends StatelessWidget {
  const Buttons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Buttons'),),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextButton(
              child: const Text('Text Button'),
              style: TextButton.styleFrom(
                primary: Colors.black,
                backgroundColor: Colors.yellow,
                shadowColor: Colors.white,
                elevation: 10.0,
                shape: StadiumBorder(),
                minimumSize: Size(50, 40),
                maximumSize: Size(300, 40),
              ),
              onPressed: (){},
            ),
            TextButton.icon(
              icon: const Icon(Icons.clear),
              label: const Text('Text Button With Icon'),
              style: TextButton.styleFrom(
                primary: Colors.black,
                backgroundColor: Colors.yellow,
                shadowColor: Colors.white,
                elevation: 10.0,
                shape: StadiumBorder(),
                minimumSize: Size(50, 40),
                maximumSize: Size(300, 40),
              ),
              onPressed: (){},
            ),
            ElevatedButton(
              child: Text('Elevated Button'),
              style: ElevatedButton.styleFrom(
                primary: Colors.cyanAccent,
                onPrimary: Colors.black,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)
                ),
                elevation: 10.0,
                minimumSize: Size(50, 40),
                maximumSize: Size(300, 40),
              ),
              onPressed: (){},
            ),
            ElevatedButton.icon(
              icon: const Icon(Icons.clear),
              label: Text('Elevated Button With Icon'),
              style: ElevatedButton.styleFrom(
                primary: Colors.cyanAccent,
                onPrimary: Colors.black,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)
                ),
                elevation: 10.0,
                minimumSize: Size(50, 40),
                maximumSize: Size(300, 40),
              ),
              onPressed: (){},
            ),
            OutlinedButton(
              child: const Text('Outlined Button'),
              style: OutlinedButton.styleFrom(
                primary: Colors.black,
                backgroundColor: Colors.greenAccent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)
                ),
                elevation: 10.0,
                minimumSize: Size(50, 40),
                maximumSize: Size(300, 40),
              ),
              onPressed: (){},
            ),
            OutlinedButton.icon(
              icon: const Icon(Icons.clear),
              label: const Text('Outlined Button'),
              style: OutlinedButton.styleFrom(
                primary: Colors.black,
                backgroundColor: Colors.greenAccent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)
                ),
                elevation: 10.0,
                minimumSize: Size(50, 40),
                maximumSize: Size(300, 40),
              ),
              onPressed: (){},
            ),
            FloatingActionButton(
              child: const Icon(Icons.clear),
              backgroundColor: Colors.amber,
              foregroundColor: Colors.black,
              splashColor: Colors.white.withOpacity(0.3),
              elevation: 10.0,
              mini: true,
              onPressed: (){},
            ),
          ],
        ),
      ),
    );
  }
}
