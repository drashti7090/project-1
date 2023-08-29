import 'package:flutter/material.dart';
import 'package:project_1/tabbardemo.dart';

class RcsDemo extends StatefulWidget {
  const RcsDemo({Key? key}) : super(key: key);

  @override
  State<RcsDemo> createState() => _RcsDemoState();
}

class _RcsDemoState extends State<RcsDemo> {
  List checkBoxList = List.generate(5, (index) => false); //add nd remove thay
  List switchCheck = List.generate(10, (index) => false);
  bool isCheck = false;
  bool switchCheck1 = false;
  bool groupValue1 = true;
  List  mainGroupValue = List.generate(21, (index) => 0);
  List   radio = List.generate(21, (index) => 0);
  List storeIndex = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: SingleChildScrollView(
                  child: Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: Colors.black12, width: 0.5)),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 15, bottom: 15, top: 20, right: 15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "checkbox demo",
                                  style: TextStyle(
                                      color: Colors.lightGreenAccent,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 25),
                                ),
                                Checkbox(
                                  value: isCheck,
                                  onChanged: (value) {
                                    print(value);
                                    for (int i = 1;
                                        i < checkBoxList.length;
                                        i++) {
                                      if (isCheck == true) {
                                        checkBoxList[i] = false;
                                      } else {
                                        checkBoxList[i] = true;
                                      }
                                    }
                                    isCheck = value!;
                                    setState(() {});
                                  },
                                )
                              ],
                            ),
                            for (int i = 1; i < checkBoxList.length; i++)
                              Row(
                                children: [
                                  Text(
                                    "$i.",
                                    style: const TextStyle(
                                        color: Colors.black54,
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Checkbox(
                                    value: checkBoxList[i],
                                    onChanged: (value) {
                                      print(value);
                                      checkBoxList[i] = value!;
                                      setState(() {});
                                    },
                                  )
                                ],
                              )
                          ],
                        ),
                      )))),
          Expanded(
              child: SingleChildScrollView(
                  child: Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: Colors.black12, width: 0.5)),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 15, bottom: 15, top: 20, right: 15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "Switch demo",
                                  style: TextStyle(
                                      color: Colors.lightGreenAccent,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 25),
                                ),
                                Checkbox(
                                  value: switchCheck1,
                                  onChanged: (value) {
                                    print(value);
                                    switchCheck1 = value!;
                                    for (int i = 1;
                                        i < switchCheck.length;
                                        i++) {
                                      if (switchCheck1 == true) {
                                        switchCheck[i] = true;
                                      } else {
                                        switchCheck[i] = false;
                                      }
                                    }
                                    setState(() {});
                                  },
                                )
                              ],
                            ),
                            for (int i = 1; i < switchCheck.length; i++)
                              Row(
                                children: [
                                  Text(
                                    "$i.",
                                    style: const TextStyle(
                                        color: Colors.black54,
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Switch(
                                    value: switchCheck[i],
                                    onChanged: (value) {
                                      print(value);
                                      switchCheck[i] = value;
                                      setState(() {});
                                    },
                                  ),
                                ],
                              )
                          ],
                        ),
                      )))),
          Expanded(
              child: SingleChildScrollView(
                  child: Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: Colors.black12, width: 0.5)),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 15, bottom: 15, top: 20, right: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "radio demo",
                                  style: TextStyle(
                                      color: Colors.lightGreenAccent,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 25),
                                ),
                                Checkbox(
                                  value: groupValue1,
                                  onChanged: (value) {
                                    print(value);
                                    groupValue1 = value!;
                                    for (int i = 1;
                                        i < mainGroupValue.length;
                                        i++) {
                                      if (groupValue1 == false) {
                                        mainGroupValue[i] = 0;
                                      }
                                    }

                                    setState(() {});
                                  },
                                )
                              ],
                            ),
                            for (int i = 1; i < mainGroupValue.length; i++)
                              Row(
                                children: [
                                  Text(
                                    "$i.",
                                    style: const TextStyle(
                                        color: Colors.black54,
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Radio(
                                    value: 1,
                                    groupValue: mainGroupValue[i],
                                    onChanged: (value) {
                                      print(value);
                                      mainGroupValue[i] = value!;
                                      if (value == 1) {
                                        groupValue1 = true;
                                      }
                                      setState(() {});
                                    },
                                  ),
                                  Radio(
                                    value: 2,
                                    groupValue: mainGroupValue[i],
                                    onChanged: (value) {
                                      print(value);
                                      mainGroupValue[i] = value!;
                                      if (value == 2) {
                                        groupValue1 = true;
                                      }
                                      setState(() {});
                                    },
                                  ),
                                  Radio(
                                    value: 3,
                                    groupValue: mainGroupValue[i],
                                    onChanged: (value) {
                                      print(value);
                                      mainGroupValue[i] = value!;
                                      if (value == 3) {
                                        groupValue1 = true;
                                      }
                                      setState(() {});
                                    },
                                  ),
                                  Radio(
                                    value: 4,
                                    groupValue: mainGroupValue[i],
                                    onChanged: (value) {
                                      print(value);
                                      mainGroupValue[i] = value!;
                                      if (value == 4) {
                                        groupValue1 = true;
                                      }
                                      setState(() {});
                                    },
                                  ),
                                ],
                              )
                          ],
                        ),
                      )))),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Align(
              alignment: Alignment.bottomRight,
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const TabbarDemo(),
                      ));
                },
                elevation: 20,
                child: const Icon(Icons.add),
              ),
            ),
          )
        ],
      ),
    );
  }
}
