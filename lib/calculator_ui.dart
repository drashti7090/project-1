import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  int tap = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff000000),
        body: SafeArea(
          child: Column(children: [
            const Expanded(
                flex: 2,
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 40.0, bottom: 10),
                    child: Text(
                      "0",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 75,
                          color: Color(0xffFEFFFE)),
                    ),
                  ),
                )),
            Expanded(
              flex: 4,
              child: Column(
                children: [
                  Expanded(
                      child: Row(
                    children: [
                      Expanded(
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                              shape: const CircleBorder(
                                side: BorderSide(
                                  color: Color(0xffA5A5A5),
                                ),
                              ),
                              backgroundColor: const Color(0xffA5A5A5),
                              fixedSize: const Size(95, 95)),
                          child: const Text(
                            "AC",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 30,
                                color: Color(0xff000000)),
                          ),
                        ),
                      ),
                      Expanded(
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                              shape: const CircleBorder(
                                side: BorderSide(
                                  color: Color(0xffA5A5A5),
                                ),
                              ),
                              backgroundColor: const Color(0xffA5A5A5),
                              fixedSize: const Size(95, 95)),
                          child: const Text(
                            "+/-",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 30,
                                color: Color(0xff000000)),
                          ),
                        ),
                      ),
                      Expanded(
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                              shape: const CircleBorder(
                                side: BorderSide(
                                  color: Color(0xffA5A5A5),
                                ),
                              ),
                              backgroundColor: const Color(0xffA5A5A5),
                              fixedSize: const Size(95, 95)),
                          child: const Text(
                            "%",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 35,
                                color: Color(0xff000000)),
                          ),
                        ),
                      ),
                      Expanded(
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                              shape: const CircleBorder(
                                side: BorderSide(
                                  color: Color(0xffFE9F0A),
                                ),
                              ),
                              backgroundColor: const Color(0xffFE9F0A),
                              fixedSize: const Size(95, 95)),
                          child: const Text(
                            "/",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 35,
                                color: Color(0xffFEFFFE)),
                          ),
                        ),
                      ),
                    ],
                  )),
                  Expanded(
                      child: Row(
                    children: [
                      Expanded(
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                              shape: const CircleBorder(
                                side: BorderSide(
                                  color: Color(0xff333333),
                                ),
                              ),
                              backgroundColor: const Color(0xff333333),
                              fixedSize: const Size(95, 95)),
                          child: const Text(
                            "7",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 35,
                                color: Color(0xffFEFFFE)),
                          ),
                        ),
                      ),
                      Expanded(
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                              shape: const CircleBorder(
                                side: BorderSide(
                                  color: Color(0xff333333),
                                ),
                              ),
                              backgroundColor: const Color(0xff333333),
                              fixedSize: const Size(95, 95)),
                          child: const Text(
                            "8",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 35,
                                color: Color(0xffFEFFFE)),
                          ),
                        ),
                      ),
                      Expanded(
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                              shape: const CircleBorder(
                                side: BorderSide(
                                  color: Color(0xff333333),
                                ),
                              ),
                              backgroundColor: const Color(0xff333333),
                              fixedSize: const Size(95, 95)),
                          child: const Text(
                            "9",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 35,
                                color: Color(0xffFEFFFE)),
                          ),
                        ),
                      ),
                      Expanded(
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                              shape: const CircleBorder(
                                side: BorderSide(
                                  color: Color(0xffFE9F0A),
                                ),
                              ),
                              backgroundColor: const Color(0xffFE9F0A),
                              fixedSize: const Size(95, 95)),
                          child: const Icon(
                            Icons.clear,
                            color: Color(0xffFEFFFE),
                            size: 40,
                          ),
                        ),
                      ),
                    ],
                  )),
                  Expanded(
                      child: Row(
                    children: [
                      Expanded(
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                              shape: const CircleBorder(
                                side: BorderSide(
                                  color: Color(0xff333333),
                                ),
                              ),
                              backgroundColor: const Color(0xff333333),
                              fixedSize: const Size(95, 95)),
                          child: const Text(
                            "4",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 35,
                                color: Color(0xffFEFFFE)),
                          ),
                        ),
                      ),
                      Expanded(
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                              shape: const CircleBorder(
                                side: BorderSide(
                                  color: Color(0xff333333),
                                ),
                              ),
                              backgroundColor: const Color(0xff333333),
                              fixedSize: const Size(95, 95)),
                          child: const Text(
                            "5",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 35,
                                color: Color(0xffFEFFFE)),
                          ),
                        ),
                      ),
                      Expanded(
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                              shape: const CircleBorder(
                                side: BorderSide(
                                  color: Color(0xff333333),
                                ),
                              ),
                              backgroundColor: const Color(0xff333333),
                              fixedSize: const Size(95, 95)),
                          child: const Text(
                            "6",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 35,
                                color: Color(0xffFEFFFE)),
                          ),
                        ),
                      ),
                      Expanded(
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                              shape: const CircleBorder(
                                side: BorderSide(
                                  color: Color(0xffFE9F0A),
                                ),
                              ),
                              backgroundColor: const Color(0xffFE9F0A),
                              fixedSize: const Size(95, 95)),
                          child: const Text(
                            "-",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 70,
                                color: Color(0xffFEFFFE)),
                          ),
                        ),
                      ),
                    ],
                  )),
                  Expanded(
                      child: Row(
                    children: [
                      Expanded(
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                              shape: const CircleBorder(
                                side: BorderSide(
                                  color: Color(0xff333333),
                                ),
                              ),
                              backgroundColor: const Color(0xff333333),
                              fixedSize: const Size(95, 95)),
                          child: const Text(
                            "1",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 35,
                                color: Color(0xffFEFFFE)),
                          ),
                        ),
                      ),
                      Expanded(
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                              shape: const CircleBorder(
                                side: BorderSide(
                                  color: Color(0xff333333),
                                ),
                              ),
                              backgroundColor: const Color(0xff333333),
                              fixedSize: const Size(95, 95)),
                          child: const Text(
                            "2",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 35,
                                color: Color(0xffFEFFFE)),
                          ),
                        ),
                      ),
                      Expanded(
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                              shape: const CircleBorder(
                                side: BorderSide(
                                  color: Color(0xff333333),
                                ),
                              ),
                              backgroundColor: const Color(0xff333333),
                              fixedSize: const Size(95, 95)),
                          child: const Text(
                            "3",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 35,
                                color: Color(0xffFEFFFE)),
                          ),
                        ),
                      ),
                      Expanded(
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                              shape: const CircleBorder(
                                side: BorderSide(
                                  color: Color(0xffFE9F0A),
                                ),
                              ),
                              backgroundColor: const Color(0xffFE9F0A),
                              fixedSize: const Size(95, 95)),
                          child: const Text(
                            "+",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 45,
                                color: Color(0xffFEFFFE)),
                          ),
                        ),
                      ),
                    ],
                  )),
                  Expanded(
                      child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 8.0, bottom: 8, left: 15, right: 15),
                          child: TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(60)),
                                backgroundColor: const Color(0xff333333),
                                fixedSize: const Size(95, 95),
                                alignment: const Alignment(-1, 0),
                                padding: const EdgeInsets.only(left: 40)),
                            child: const Text(
                              "0",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 40,
                                  color: Color(0xffFEFFFE)),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                              shape: const CircleBorder(
                                side: BorderSide(
                                  color: Color(0xff333333),
                                ),
                              ),
                              backgroundColor: const Color(0xff333333),
                              fixedSize: const Size(95, 95)),
                          child: const Text(
                            ".",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 45,
                                color: Color(0xffFEFFFE)),
                          ),
                        ),
                      ),
                      Expanded(
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                              shape: const CircleBorder(
                                side: BorderSide(
                                  color: Color(0xffFE9F0A),
                                ),
                              ),
                              backgroundColor: const Color(0xffFE9F0A),
                              fixedSize: const Size(95, 95)),
                          child: const Text(
                            "=",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 45,
                                color: Color(0xffFEFFFE)),
                          ),
                        ),
                      ),
                    ],
                  )),
                ],
              ),
            )
          ]),
        ));
  }
}
