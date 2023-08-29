import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class WrapTask extends StatefulWidget {
  const WrapTask({super.key});

  @override
  State<WrapTask> createState() => _WrapTaskState();
}

class _WrapTaskState extends State<WrapTask> {
  final nameController = TextEditingController();
  final buttonController = TextEditingController();
  String? selectImage;
  List wrapList = [];
  String? imgPath;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Wrap(
          spacing: 8.0, // gap between adjacent chips
          runSpacing: 4.0,
          children: wrapList
              .map((e) => GestureDetector(
                        onTap: () {
                          e["tap"] = !e["tap"];
                          setState(() {});
                        },
                        child: Chip(

                          padding: EdgeInsets.all(15),
                          elevation: 10,
                          backgroundColor: e["tap"] == false
                              ? Colors.grey
                              : Colors.blueAccent,
                          label: Text(e["name"]),
                          deleteIcon: e["button"] == "y"
                              ? Icon(
                                  Icons.highlight_remove_sharp,
                                  size: 15,
                                )
                              : SizedBox(),
                          onDeleted: () {
                            for (int i = 0; i < wrapList.length; i++) {
                              wrapList.removeAt(i);
                            }
                            setState(() {});
                          },
                          avatar: (e["image"] == null)
                              ? SizedBox()
                              : Image.file(e["image"],fit: BoxFit.fill),
                        ),
                      )

                  )
              .toList(),


        ),
      ),
      floatingActionButton: ElevatedButton(
          onPressed: () {
            nameController.clear();
            buttonController.clear();
            showDialog(
              context: context,
              barrierDismissible: false,
              builder: (context) {
                return AlertDialog(
                  actions: [
                    Container(
                      height: 300,
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.all(15),
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("name", style: TextStyle(fontSize: 15)),
                          TextFormField(
                            controller: nameController,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.cyan),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Text("close button", style: TextStyle(fontSize: 15)),
                          TextFormField(
                            controller: buttonController,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.cyan),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Image",
                                style: TextStyle(fontSize: 15),
                              ),
                              FloatingActionButton(
                                onPressed: () async {
                                  final ImagePicker picker = ImagePicker();
                                  final XFile? img = await picker.pickImage(
                                      source: ImageSource.camera);
                                  imgPath=img!.path;
                                  if (img != null) {
                                    for (int i = 0; i < wrapList.length; i++) {
                                      wrapList[i]["image"]=imgPath;
                                    }
                                    ;
                                  }
                                },
                                child: Icon(Icons.add),
                              ),
                            ],
                          ),
                          Center(
                            child: ElevatedButton(
                                onPressed: () async {
                                  wrapList.add({
                                    "name": nameController.text,
                                    "button": buttonController.text,
                                    "tap": false,

                                  });
                                  Navigator.pop(context);
                                  setState(() {});
                                },
                                child: Text("submit")),
                          )
                        ],
                      ),
                    ),
                  ],
                );
              },
            );
          },
          child: Icon(Icons.add)),
    );
  }
}
