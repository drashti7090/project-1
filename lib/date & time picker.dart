import 'package:flutter/material.dart';

class DateTimePicker extends StatelessWidget {
  const DateTimePicker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
        ElevatedButton(onPressed: () {
          print("${DateTime.now()}");
          showDatePicker(context: context, initialDate: DateTime.now(), firstDate:DateTime(1945) , lastDate:DateTime.now());
        }, child: const Text("date picker")),
            ElevatedButton(onPressed: () {
              print("${TimeOfDay.now()}");
              showTimePicker(context: context, initialTime: const TimeOfDay(hour: 10, minute: 5));
            }, child: const Text("time picker"))
      ]),
    );
  }
}
