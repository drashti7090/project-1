import 'package:flutter/material.dart';

class CustomDrawer01 extends StatefulWidget {
  const CustomDrawer01({super.key});

  @override
  State<CustomDrawer01> createState() => _CustomDrawer01State();
}

class _CustomDrawer01State extends State<CustomDrawer01> {
  final GlobalKey<ScaffoldState> key=GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(children: [
          //badhi properties ahiya aapvani
        ]),
        width: MediaQuery.of(context).size.width/2,
      ),
      key: key,
      body: Column(children: [
        ElevatedButton(onPressed: () {
          key.currentState!.openDrawer();
        }, child: Text("open drawer"))
      ]),
    );
  }
}
