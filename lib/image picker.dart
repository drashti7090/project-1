import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class ImagePickerDemo extends StatefulWidget {
  const ImagePickerDemo({Key? key}) : super(key: key);

  @override
  State<ImagePickerDemo> createState() => _ImagePickerDemoState();
}

class _ImagePickerDemoState extends State<ImagePickerDemo> {
  int n = 0;
  int storeValue = 0;
  String? selectImage;
  final textController = TextEditingController();

  List images = [
    {"category": "category 1", "image": []},
    {
      "category": "category 2",
      "image": [""]
    },
    {"category": "category 3", "image": []},
    {"category": "category 4", "image": []},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        backgroundColor: Colors.teal,
        shadowColor: Colors.teal,
        title: Text(images[n]["category"]),
        elevation: 20,
        centerTitle: true,
      ),
      drawer: Container(
        width: MediaQuery.of(context).size.width / 2,
        padding:
            const EdgeInsets.only(bottom: 80, right: 30, left: 30, top: 80),
        decoration: BoxDecoration(
          color: Colors.teal.shade800.withOpacity(.20),
          borderRadius: const BorderRadius.only(
            bottomRight: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          children: [
            for (int i = 0; i < images.length; i++)
              GestureDetector(
                onTap: () {
                  n = i;
                  storeValue = i;
                  Navigator.pop(context);
                  setState(() {});
                },
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        images[i]["category"],
                        style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.teal),
                      ),
                      IconButton(
                          onPressed: () {
                            images.removeAt(i);
                            setState(() {});
                          },
                          icon: const Icon(Icons.clear),
                          color: Colors.teal)
                    ]),
              ),
            const SizedBox(
              height: 150,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return Scaffold(
                          backgroundColor: Colors.transparent,
                          body: Container(
                            height: 250,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.teal.shade300.withOpacity(0.50)),
                            child: Column(
                              children: [
                                Container(
                                  height: 50,
                                  margin: const EdgeInsets.only(
                                      top: 70, bottom: 10),
                                  width:
                                      MediaQuery.of(context).size.width / 1.5,
                                  child: TextField(
                                    controller: textController,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Colors.white70,
                                        ),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                    ),
                                  ),
                                ),
                                ElevatedButton(
                                    onPressed: () {
                                      images.add({
                                        "category": textController.text,
                                        "image": []
                                      });
                                      Navigator.pop(context);
                                      setState(() {});
                                    },
                                    child: const Text("submit"))
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                  icon: const Icon(
                    Icons.add_rounded,
                    color: Colors.teal,
                  ),
                ),
                const Text(
                  "Add Category ",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.teal),
                ),
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.grey,
          margin: const EdgeInsets.all(20),
          child: Column(children: [
            GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: images[n]["image"].length + 1,
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 150,
                  childAspectRatio: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  mainAxisExtent: 140),
              itemBuilder: (context, index) {
                return index == images[n]["image"].length
                    ? Container(
                        height: 200,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.teal),
                        ),
                        child: IconButton(
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (context) {
                                  return CupertinoAlertDialog(
                                    title: Text("upload from"),
                                    actions: [
                                      TextButton(
                                          onPressed: () async {
                                            final ImagePicker picker =
                                                ImagePicker();
                                            final XFile? img =
                                                await picker.pickImage(
                                                    source: ImageSource.camera);
                                            if (img != null) {
                                              images[n]["image"].add(img.path);
                                              Navigator.pop(context);
                                              setState(() {});
                                            }
                                          },
                                          child: Text("camera")),
                                      TextButton(
                                          onPressed: () async {
                                            final ImagePicker picker =
                                                ImagePicker();
                                            final XFile? photo =
                                                await picker.pickImage(
                                                    source:
                                                        ImageSource.gallery);
                                            if (photo != null) {
                                              images[n]["image"]
                                                  .add(photo.path);
                                              Navigator.pop(context);
                                              setState(() {});
                                            }
                                          },
                                          child: Text("gallary")),
                                    ],
                                  );
                                },
                              );
                            },
                            icon: Icon(Icons.add),
                            color: Colors.teal,
                            iconSize: 30),
                      )
                    : images[n]["image"].isEmpty
                        ? Container()
                        : Container(
                  alignment: Alignment.center,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.teal,
                                ),
                                borderRadius: BorderRadius.circular(15)),
                            child: Stack(alignment: Alignment.topRight,
                                children: [
                              Image.file(
                                File(images[n]["image"][index]),
                                width: 200,
                              ),
                              IconButton(onPressed: () {
                                images[n]["image"].removeAt(index);
                                setState(() {

                                });
                              }, icon: Icon(Icons.close))
                            ]),
                          );
              },
            )
          ]),
        ),
      ),
    );
  }
}
