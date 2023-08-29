import 'package:flutter/material.dart';

class TextFeildDemo extends StatefulWidget {
  const TextFeildDemo({Key? key}) : super(key: key);

  @override
  State<TextFeildDemo> createState() => _TextFeildDemoState();
}

class _TextFeildDemoState extends State<TextFeildDemo> {
  TextEditingController textController = TextEditingController();
  TextEditingController textController1 = TextEditingController();
  TextEditingController textController2= TextEditingController();
  TextEditingController textController3= TextEditingController();
  TextEditingController textController4= TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            const EdgeInsets.only(top: 40, bottom: 20, right: 15, left: 15),
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              controller: textController,
              decoration: const InputDecoration(
                labelText: "User Name",
                hintText: "enter your name",
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black38),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: TextField(
                controller: textController1,
                decoration: InputDecoration(
                    labelText: "password",
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.blue,
                        ),
                        borderRadius: BorderRadius.circular(30)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.blue,
                        ),
                        borderRadius: BorderRadius.circular(30)))),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              controller: textController2,
              decoration: InputDecoration(
                labelText: "your name",
                filled: true,
                prefixIcon: const Icon(Icons.person),
                hintText: "name",
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.black38)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.black38)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              controller: textController3,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.blueGrey,
                prefixIcon: const Icon(Icons.person_add_alt_1),
                suffixIcon: const Icon(Icons.add_box_sharp),
                hintText: "text demo",
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.cyan)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.cyan)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              controller: textController4,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.black38,

                suffixIcon: const Icon(Icons.add),
                hintText: " enter text here",
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(color: Colors.lightGreenAccent)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(color: Colors.lightGreenAccent)),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
