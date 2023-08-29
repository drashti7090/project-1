import 'package:flutter/material.dart';

class ScaffoldDemo extends StatelessWidget {
  const ScaffoldDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        shadowColor: Colors.blueGrey,
        centerTitle: true,
        titleSpacing: 2,
        title: const Text("applikacia"),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
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
        backgroundColor: Colors.brown,
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

      body: Container(
        height: 200,
        width: double.infinity,
        alignment: Alignment.bottomCenter,
        margin: const EdgeInsets.all(
          30,
        ),
        padding: const EdgeInsets.all(
          20,
        ),
        decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.black26,
                Colors.blueGrey,
                Colors.black26,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 5,
                // blurStyle: BlurStyle.solid,
                spreadRadius: 10,
                offset:Offset(5, 5),),
            ],
            // backgroundBlendMode: BlendMode.darken,
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            )),
        child: const Text("hello world"),
      ),
      
    );
  }
}
