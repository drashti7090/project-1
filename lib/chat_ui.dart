import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ChatUiDemo extends StatefulWidget {
  const ChatUiDemo({Key? key}) : super(key: key);

  @override
  State<ChatUiDemo> createState() => _ChatUiDemoState();
}

class _ChatUiDemoState extends State<ChatUiDemo> {
  TextEditingController textEditingController = TextEditingController();
  String? selectImage;
  List storeData = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                        "https://i.pinimg.com/originals/85/04/30/850430a750fb80c1ebaa5e740fc7cbd6.jpg",
                      ),
                      fit: BoxFit.fill)),
              child: storeData.isNotEmpty
                  ? Flexible(
                      child: Container(child: Text(storeData as String)),
                    )
                  : Container(),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  height: 90,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.black54,
                    border: Border(
                      bottom: BorderSide(color: Colors.white, width: 0.07),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        bottom: 25.0, left: 15, right: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Icon(Icons.arrow_back_ios_new_outlined,
                            color: Colors.blue),
                        Text(
                          "drashti kakadiya",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Icon(Icons.call, color: Colors.blue),
                      ],
                    ),
                  )),
              Container(
                height: 80,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Color(0xff1D1D1D),
                  border: Border(
                    top: BorderSide(color: Colors.white, width: 0.1),
                  ),
                ),
                child: Row(
                  children: [
                    Container(
                      height: 40,
                      margin: EdgeInsets.only(left: 30),
                      width: MediaQuery.of(context).size.width - 150,
                      decoration: BoxDecoration(
                          color: Colors.white30,
                          borderRadius: BorderRadius.circular(20)),
                      child: TextFormField(
                        controller: textEditingController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: IconButton(
                          onPressed: () {
                            storeData.add(textEditingController.toString());
                            setState(() {});
                          },
                          icon: Icon(
                            Icons.send_sharp,
                            size: 35,
                            color: Colors.blue,
                          )),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
