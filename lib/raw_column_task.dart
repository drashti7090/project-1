import 'package:flutter/material.dart';

class Demo11 extends StatelessWidget {
  const Demo11({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: const [
              Padding(
                padding:
                    EdgeInsets.only(top: 35, left: 15, right: 15, bottom: 15),
                child: Card(
                  shadowColor: Colors.black,
                  elevation: 25,
                  color: Colors.purple,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(100))),
                  child: SizedBox(
                    width: 80,
                    height: 80,
                  ),
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(top: 35, left: 15, right: 15, bottom: 15),
                child: Card(
                  shadowColor: Colors.black,
                  elevation: 25,
                  color: Colors.red,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(100))),
                  child: SizedBox(
                    width: 80,
                    height: 80,
                  ),
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(top: 35, left: 15, right: 15, bottom: 15),
                child: Card(
                  shadowColor: Colors.black,
                  elevation: 25,
                  color: Colors.teal,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(100))),
                  child: SizedBox(
                    width: 80,
                    height: 80,
                  ),
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(top: 35, left: 15, right: 15, bottom: 15),
                child: Card(
                  shadowColor: Colors.black,
                  elevation: 25,
                  color: Colors.lightBlueAccent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(100))),
                  child: SizedBox(
                    width: 80,
                    height: 80,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.all(17),
                height: 150,
                width: 445,
                padding: const EdgeInsets.all(17),
                decoration: BoxDecoration(
                    gradient: const LinearGradient(colors: [
                      Colors.blueAccent,
                      Colors.blueGrey,
                      Colors.blueAccent
                    ], begin: Alignment.bottomCenter, end: Alignment.topRight),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black26,
                          blurRadius: 15,
                          offset: Offset(15, 15))
                    ],
                    borderRadius: BorderRadius.circular(20)),
                child: const Card(
                  shadowColor: Colors.black,
                  elevation: 20,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  color: Colors.black45,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 17, left: 17, top: 17),
                    height: 70,
                    width: 50,
                    decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black26,
                            offset: Offset(15, 15),
                            blurRadius: 15),
                      ],
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15)),
                    ),
                  ),
                  Container(
                    margin:
                        const EdgeInsets.only(right: 17, left: 17, bottom: 17),
                    height: 70,
                    width: 50,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(15),
                          bottomLeft: Radius.circular(15)),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black26,
                            offset: Offset(15, 15),
                            blurRadius: 15),
                      ],
                      color: Colors.deepPurpleAccent,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 17, left: 17, top: 17),
                    height: 70,
                    width: 50,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15)),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black26,
                            offset: Offset(15, 15),
                            blurRadius: 15),
                      ],
                      color: Colors.deepOrange,
                    ),
                  ),
                  Container(
                    margin:
                        const EdgeInsets.only(right: 17, left: 17, bottom: 17),
                    height: 70,
                    width: 50,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(15),
                          bottomLeft: Radius.circular(15)),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black26,
                            offset: Offset(15, 15),
                            blurRadius: 15),
                      ],
                      color: Colors.deepOrangeAccent,
                    ),
                  ),
                ],
              ),
              Container(
                // color: Colors.blueGrey,
                height: 140,
                width: 100,
                margin: const EdgeInsets.all(17),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black26,
                        offset: Offset(15, 15),
                        blurRadius: 15),
                  ],
                  color: Colors.blueGrey,
                ),
              ),
              Container(
                // color: Colors.grey,
                height: 140,
                width: 142,
                margin: const EdgeInsets.all(17),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black26,
                        offset: Offset(15, 15),
                        blurRadius: 15),
                  ],
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                height: 80,
                width: 80,
                margin: const EdgeInsets.all(17),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.pink,
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(15, 15),
                      color: Colors.black26,
                      blurRadius: 15,
                    ),
                  ],
                ),
              ),
              Container(
                height: 80,
                width: 80,
                margin: const EdgeInsets.all(17),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.lime,
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(15, 15),
                      color: Colors.black26,
                      blurRadius: 15,
                    ),
                  ],
                ),
              ),
              Container(
                height: 80,
                width: 80,
                margin: const EdgeInsets.all(17),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.yellowAccent,
                  boxShadow: const [
                    BoxShadow(
                      offset: Offset(15, 15),
                      color: Colors.black26,
                      blurRadius: 15,
                    ),
                  ],
                ),
              ),
              Container(
                height: 80,
                width: 80,
                margin: const EdgeInsets.all(17),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.pinkAccent,
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(15, 15),
                      color: Colors.black26,
                      blurRadius: 15,
                    ),
                  ],
                ),
                child: const Card(
                  color: Colors.white38,
                  margin: EdgeInsets.all(20),
                  shadowColor: Colors.white38,
                  elevation: 10,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                height: 140,
                width: 100,
                margin: const EdgeInsets.all(17),
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 15,
                      offset: Offset(15, 15),
                    )
                  ],
                  color: Colors.lightGreen,
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              Container(
                // color: Colors.orange,
                height: 140,
                width: 100,
                margin: const EdgeInsets.all(17),
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 15,
                      offset: Offset(15, 15),
                    )
                  ],
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              Container(
                //color: Colors.indigo,
                height: 140,
                width: 175,
                margin: const EdgeInsets.all(17),
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 15,
                      offset: Offset(15, 15),
                    )
                  ],
                  color: Colors.indigo,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Card(
                  color: Colors.black45,
                  margin: EdgeInsets.all(20),
                  shadowColor: Colors.white38,
                  elevation: 15,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
