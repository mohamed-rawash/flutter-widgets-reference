import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';


// date_picker_timeline:
class AmazingDateWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            DatePicker(
              DateTime.now(),
              width: 60,
              height: 100,
              initialSelectedDate: DateTime.now(),
              selectionColor: Colors.amber,
              selectedTextColor: Colors.black,
              monthTextStyle: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Colors.grey,
              ),
              dayTextStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.grey,
              ),
              dateTextStyle: const TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.w700,
                color: Colors.grey,
              ),
              onDateChange: (newDate) {},
            ),
          ],
        )
      ),
    );
  }
}
