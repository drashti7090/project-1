import 'package:flutter/material.dart';

class WidgetsDemo extends StatelessWidget {
  const WidgetsDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Align(alignment: Alignment.bottomLeft,
        child: Padding(
          padding: EdgeInsets.all(30.0),
          child: Card(
            color: Colors.deepPurpleAccent,
            elevation: 30,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
            ),
            margin: EdgeInsets.all(50),
            shadowColor: Colors.black,
            child: SizedBox(
              width: 400,
              height: 150,
              child: Align( alignment: Alignment.bottomCenter,
                  child: Text("drashti")),
            ),
          ),
        ),
      ),
    );
   /* return const Scaffold(
      body: Align(alignment: Alignment.bottomCenter,
        child: Padding(
          padding: EdgeInsets.all(40.0),
          child: Card(
            color: Colors.grey,
            elevation: 50,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
            ),
            margin: EdgeInsets.all(10),
            shadowColor: Colors.black,
            child: SizedBox(
              width: 300,
              height: 200,
              child: Align( alignment: Alignment.topLeft,
                  child: Text("hello world")),
            ),
          ),
        ),
      ),
    );*/
    /*return const Scaffold(
      body: Align(alignment: Alignment.topLeft,
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Card(
            color: Colors.lightGreen,
            elevation: 30,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
            ),
            margin: EdgeInsets.all(10),
            shadowColor: Colors.black,
            child: SizedBox(
              width: 400,
              height: 300,
              child: Align( alignment: Alignment.center,
                  child: Text("new card")),
            ),
          ),
        ),
      ),
    );*/
   /* return const Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Card(
            color: Colors.deepOrangeAccent,
            elevation: 30,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
            ),
            margin: EdgeInsets.all(20),
            shadowColor: Colors.pink,
            child: SizedBox(
              width: 400,
              height: 200,
              child: Align( alignment: Alignment.center,
                  child: Text("welcome")),
            ),
          ),
        ),
      ),
    );*/
  }
}
