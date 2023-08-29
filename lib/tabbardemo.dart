import 'package:flutter/material.dart';

class TabbarDemo extends StatefulWidget {
  const TabbarDemo({Key? key}) : super(key: key);

  @override
  State<TabbarDemo> createState() => _TabbarDemoState();
}

class _TabbarDemoState extends State<TabbarDemo> {
  List checkBoxList = List.generate(5, (index) => false); //add nd remove thay
  List switchCheck = List.generate(10, (index) => false);
  bool isCheck = false;
  bool switchCheck1 = false;
  bool groupValue = false;
  List mainGroupValue = List.generate(21, (index) => 0);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('TabBar Sample'),
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                text: "checkbox",
              ),
              Tab(
                text: "switch",
              ),
              Tab(
                text: "radio",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Center(
                child: SingleChildScrollView(
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
                          for (int i = 1; i < checkBoxList.length; i++) {
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
            ))),
            Center(
                child: SingleChildScrollView(
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
                          for (int i = 1; i < switchCheck.length; i++) {
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
            ))),
            Center(
              child: SingleChildScrollView(
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
                          value: groupValue,
                          onChanged: (value) {
                            print(value);
                            groupValue = value!;
                            for (int i = 0; i < mainGroupValue.length; i++) {
                              if (groupValue == true) {
                                mainGroupValue[i] = 1;
                              } else {
                                mainGroupValue[i] = 0;
                              }
                            }
                            setState(() {});
                          },
                        )
                      ],
                    ),
                    for (int i = 1; i < 21; i++)
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
                              setState(() {});
                            },
                          ),
                          Radio(
                            value: 2,
                            groupValue: mainGroupValue[i],
                            onChanged: (value) {
                              print(value);
                              mainGroupValue[i] = value!;
                              setState(() {});
                            },
                          ),
                          Radio(
                            value: 3,
                            groupValue: mainGroupValue[i],
                            onChanged: (value) {
                              print(value);
                              mainGroupValue[i] = value!;
                              setState(() {});
                            },
                          ),
                          Radio(
                            value: 4,
                            groupValue: mainGroupValue[i],
                            onChanged: (value) {
                              print(value);
                              mainGroupValue[i] = value!;
                              setState(() {});
                            },
                          ),
                        ],
                      )
                  ],
                ),
              )),
            ),
          ],
        ),
      ),
    );
  }
}
