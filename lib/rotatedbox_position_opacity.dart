import 'package:flutter/material.dart';
import 'dart:math' as math;

class BoxDemo extends StatefulWidget {
  const BoxDemo({super.key});

  @override
  State<BoxDemo> createState() => _BoxDemoState();
}

class _BoxDemoState extends State<BoxDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: RotatedBox(
                quarterTurns: 3,
                child: Container(
                    color: Colors.blue,
                    height: 100,
                    alignment: Alignment.center,
                    width: 200,
                    child: Text("i am drashti")),
              ),
            ),
            RotatedBox(
              quarterTurns: 3,
              child: Transform.rotate(
                angle: 1,
                origin: Offset(40, 70),
                child: Container(
                    color: Colors.deepOrange,
                    height: 100,
                    alignment: Alignment.center,
                    width: 200,
                    child: Text("i am drashti")),
              ),
            ),
            RotatedBox(
              quarterTurns: 2,
              child: Opacity(
                opacity: 0.5,
                child: Container(
                  color: Colors.deepOrange,
                  height: 100,
                  alignment: Alignment.center,
                  width: 200,
                  child: Text("i am drashti"),
                ),
              ),
            ),
            RotatedBox(quarterTurns: 2,child: Transform.scale(scale: 2,child: Container(  color: Colors.purple,
              height: 100,
              alignment: Alignment.center,
              width: 200,
              child: Text("i am drashti"),)),),
            Transform(transform: Matrix4.skewY(0.2)..rotateX(-math.pi/0.10),
              child: Container(height: 100,width: 200,color: Colors.blueAccent,alignment: Alignment.center,child: Text("drashti")),
            ),

          ],
        ),
      ),
    );
  }
}
