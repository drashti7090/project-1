import 'package:flutter/material.dart';

class Expand extends StatelessWidget {
  const Expand({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.lightBlue,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blueGrey,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.teal,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(
                      bottom: 20,
                      left: 10,
                      right: 10,
                    ),
                    decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.lightBlue,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin:
                        const EdgeInsets.only(bottom: 20, left: 10, right: 10),
                    decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.black26,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin:
                        const EdgeInsets.only(bottom: 20, left: 10, right: 10),
                    decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.blueGrey,
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding:
                        const EdgeInsets.only(bottom: 20, left: 10, right: 10),
                    child: Column(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: const BoxDecoration(
                              shape: BoxShape.rectangle,
                              color: Colors.teal,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            decoration: const BoxDecoration(
                              shape: BoxShape.rectangle,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin:
                        const EdgeInsets.only(bottom: 20, left: 10, right: 10),
                    decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.black26,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin:
                        const EdgeInsets.only(bottom: 20, left: 10, right: 10),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.lightBlueAccent,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin:
                        const EdgeInsets.only(bottom: 20, left: 10, right: 10),
                    decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.tealAccent,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin:
                        const EdgeInsets.only(bottom: 20, left: 10, right: 10),
                    decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.blueAccent,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin:
                        const EdgeInsets.only(bottom: 20, left: 10, right: 10),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.teal,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    margin:
                        const EdgeInsets.only(bottom: 20, left: 10, right: 10),
                    decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.blue,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin:
                        const EdgeInsets.only(bottom: 20, left: 10, right: 10),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black26,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin:
                        const EdgeInsets.only(bottom: 20, left: 10, right: 10),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blueGrey,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin:
                        const EdgeInsets.only(bottom: 20, left: 10, right: 10),
                    decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.black38,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(
                      bottom: 20,
                      left: 20,
                      right: 20,
                      top: 10,
                    ),
                    decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.lightBlue,
                    ),
                    child: Container(
                      margin: const EdgeInsets.only(
                          top: 20, bottom: 20, left: 20, right: 20),
                      decoration: const BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Colors.blueGrey,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
