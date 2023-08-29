import 'package:flutter/material.dart';

class Bio1 extends StatelessWidget {
  const Bio1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Material(
      child: Center(
        child: Text(
          "name:drashti kakadiya\n"
              "father's name:kishorbhai\n"
              "mother's name:shobhaben\n",
          textDirection: TextDirection.ltr,
          style: TextStyle(
              decoration: TextDecoration.underline,
              fontSize: 20
              ,
              color: Colors.greenAccent,
              fontStyle: FontStyle.italic),
          textAlign: TextAlign.right,
        ),
      ),
    );
  }
}
