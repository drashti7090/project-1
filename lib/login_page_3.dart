import 'package:flutter/material.dart';

class Login3 extends StatelessWidget {
  const Login3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: const Color(0xFFE99743),
        child: Padding(
          padding: EdgeInsets.all(MediaQuery.of(context).size.height / 19),
          child: Column(
            children: [
              const Text(
                "Enter Verification Code",
                style: TextStyle(
                  color: Color(0xFFF9ECE0),
                  fontSize: 19,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Center(
                    child: Padding(
                      padding: EdgeInsets.only(top: 80.0),
                      child: Icon(
                        Icons.mode_comment_outlined,
                        color: Colors.black,
                        size: 100,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(top: 60),
                    child: Text(
                      "OTP receive in your E-mail",
                      style: TextStyle(
                        color: Color(0xFFF9ECE0),
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                      ),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      margin:
                          const EdgeInsets.only(top: 25, right: 15, left: 15),
                      height: MediaQuery.of(context).size.height / 11.2,
                      decoration: BoxDecoration(
                        color: const Color(0xFFF8FCFF),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
                        child: Text(
                          "7",
                          style: TextStyle(
                              color: Color(0xFF949494),
                              fontWeight: FontWeight.w700,
                              fontSize: 31),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin:
                          const EdgeInsets.only(top: 25, right: 15, left: 15),
                      height: MediaQuery.of(context).size.height / 11.2,
                      decoration: BoxDecoration(
                        color: const Color(0xFFF8FCFF),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
                        child: Text(
                          "2",
                          style: TextStyle(
                              color: Color(0xFF949494),
                              fontWeight: FontWeight.w700,
                              fontSize: 31),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin:
                          const EdgeInsets.only(top: 25, right: 15, left: 15),
                      height: MediaQuery.of(context).size.height / 11.2,
                      decoration: BoxDecoration(
                        color: const Color(0xFFEBB47C),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin:
                          const EdgeInsets.only(top: 25, right: 15, left: 15),
                      height: MediaQuery.of(context).size.height / 11.2,
                      decoration: BoxDecoration(
                        color: const Color(0xFFEBB47C),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Didn't receive an OTP?",
                      style: TextStyle(
                        color: Color(0xFFF9ECE0),
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      "  Resend 2:15",
                      style: TextStyle(
                        color: Color(0xFFF9ECE0),
                        fontWeight: FontWeight.w700,
                        fontSize: 19,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Expanded(
                      child: Text(
                        "       7",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 30,
                          color: Color(0xFFF9ECE0),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        "       8",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 30,
                          color: Color(0xFFF9ECE0),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        "       9",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 30,
                          color: Color(0xFFF9ECE0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Expanded(
                      child: Text(
                        "       4",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 30,
                          color: Color(0xFFF9ECE0),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        "       5",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 30,
                          color: Color(0xFFF9ECE0),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        "       6",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 30,
                          color: Color(0xFFF9ECE0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Expanded(
                      child: Text(
                        "       1",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 30,
                          color: Color(0xFFF9ECE0),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        "       2",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 30,
                          color: Color(0xFFF9ECE0),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        "       3",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 30,
                          color: Color(0xFFF9ECE0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Expanded(
                      child: Text(
                        "        ",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 30,
                          color: Color(0xFFF9ECE0),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        "       0",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 30,
                          color: Color(0xFFF9ECE0),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Icon(
                        Icons.backspace_outlined,
                        size: 30,
                        color: Color(0xFFF9ECE0),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
