import 'package:flutter/material.dart';

class DialogMenuDemo extends StatelessWidget {
  const DialogMenuDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
        /*ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                barrierDismissible: false,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text("exit"),
                    content: Text("are you sure you want to exit?"),
                    actions: [
                      TextButton(onPressed: () {}, child: Text("yes")),
                      TextButton(onPressed: () {}, child: Text("no")),
                    ],
                  );
                },
              );
            },
            child: Text("dailog")),*/
        ElevatedButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context){
                    return AlertDialog(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                      backgroundColor: const Color(0xFF3D3B3C),
                      alignment: Alignment.center,
                      contentPadding: const EdgeInsets.only(bottom: 45,top: 20,right: 50,left: 50),
                      actionsPadding: const EdgeInsets.only(bottom: 55,left: 40,right: 40),
                      titlePadding: const EdgeInsets.only(top: 45),
                      title: const Text("Back to home Screen",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFFCDCACB))),
                      content: const Text(
                          "Are you sure, you want to go to\nhome screen?",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color(0xFFB8B5B8),
                              fontSize: 18,
                              fontWeight: FontWeight.w400)),
                      actions: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF8C6169),elevation: 30,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)),fixedSize: const Size(135, 50)),
                          child: const Text("No",style: TextStyle(color: Color(0xFFC7BEBC),fontSize: 19,fontWeight: FontWeight.w300)),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF8C6169),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)),fixedSize: const Size(135, 50),elevation: 30),
                          child: const Text("Yes",style: TextStyle(color: Color(0xFFC7BEBC),fontSize: 19,fontWeight: FontWeight.w300),),
                        )
                      ],
                    );
                  });
            },
            child: const Text("dialog"))
      ]),
    );
  }
}
