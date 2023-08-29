import 'package:flutter/material.dart';

class ScaffoldDemo1 extends StatelessWidget {
  const ScaffoldDemo1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black26,
        shadowColor: Colors.blueGrey,
        centerTitle: true,
        titleSpacing: 1,
        title: const Text("hello world"),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(20),
            bottomLeft: Radius.circular(20),
          ),
        ),
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
        ),
        actions: const [
          Icon(
            Icons.textsms_outlined,
            color: Colors.white,
            size: 20,
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black26,
        unselectedItemColor: Colors.white,
        unselectedIconTheme: const IconThemeData(color: Colors.white),
        //unselectedLabelStyle: const TextStyle(fontSize: 20),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map_outlined),
            label: "Maps",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera_alt_rounded),
            label: "Camera",
          ),
        ],
      ),
      body: Align(
        alignment: Alignment.topRight,
        child: Container(
          height: 100,
          width: double.infinity,
          alignment: Alignment.center,
          margin: const EdgeInsets.all(
            30,
          ),
          padding: const EdgeInsets.all(
            20,
          ),
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.brown,
                  Colors.blueGrey,
                  Colors.brown,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 5,
                  // blurStyle: BlurStyle.solid,
                  spreadRadius: 10,
                  offset: Offset(5, 10),
                ),
              ],
              // backgroundBlendMode: BlendMode.darken,
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              )),
          child: const Text("hello world"),
        ),
      ),
    );
  }
}
