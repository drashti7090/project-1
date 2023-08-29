import 'dart:ui';

import 'package:flutter/material.dart';

class BackDrop extends StatefulWidget {
  const BackDrop({super.key});

  @override
  State<BackDrop> createState() => _BackDropState();
}

class _BackDropState extends State<BackDrop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset("Assets/Images/red wallpaper.jpg",
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.fill),
          Column(
            children: [
              Expanded(flex: 4,
                child: Column(
                  children: [
                    SizedBox(
                      height: 150,
                    ),
                    Text("Touch ID or Enter Passcode",
                        style: TextStyle(
                            color: Colors.white70,
                            fontSize: 20,
                            fontWeight: FontWeight.w400)),
                    SizedBox(height: 20,),
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.circle_outlined,color: Colors.white70),
                        SizedBox(width:20,),
                        Icon(Icons.circle_outlined,color: Colors.white70),
                        SizedBox(width:20,),
                        Icon(Icons.circle_outlined,color: Colors.white70),
                        SizedBox(width:20,),
                        Icon(Icons.circle_outlined,color: Colors.white70),

                      ],
                    ),
                  ],
                ),
              ),
              Expanded(flex: 6,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 30,right: 50,left: 50),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          buildClipRRect("1"),
                          buildClipRRect("2"),
                          buildClipRRect("3"),
                        ],
                      ),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          buildClipRRect("4"),
                          buildClipRRect("5"),
                          buildClipRRect("6"),
                        ],
                      ),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          buildClipRRect("7"),
                          buildClipRRect("8"),
                          buildClipRRect("9"),
                        ],
                      ),
                      Center(child: buildClipRRect("0")),
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  ClipRRect buildClipRRect( String? text) {
    return ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: BackdropFilter(
                      filter: ImageFilter.blur(
                        sigmaX: 15.0,
                        sigmaY: 15.0,
                      ),
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(fixedSize: Size(80  , 80)),
                        child: Text(
                          text!,
                          style:
                              TextStyle(color: Colors.white70, fontSize: 28),
                        ),
                      )),
                );
  }
}
