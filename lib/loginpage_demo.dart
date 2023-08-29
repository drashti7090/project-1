import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(50),
            height: 340,
            width: 500,
            margin:
                const EdgeInsets.only(top: 20, bottom: 10, right: 10, left: 10),
            alignment: Alignment.bottomCenter,
            decoration: const BoxDecoration(
                color: Color(0xFFF7F8F3),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30))),
            child: const Text(
              "lpy.",
              style: TextStyle(
                  color: Color(0xFFFF5842),
                  fontSize: 50,
                  fontWeight: FontWeight.bold), /*textAlign: TextAlign.center*/
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(
                    top: 65, left: 20, right: 20, bottom: 20),
                height: 47,
                width: 300,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border:
                        Border.all(color: const Color(0xFFFF5842), width: 1.8),
                    borderRadius: BorderRadius.circular(20)),
                child: const Text(
                  "Sign in",
                  style: TextStyle(
                      color: Color(0xFFFF5842),
                      fontSize: 17,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(
                    top: 20, left: 20, right: 20, bottom: 20),
                height: 47,
                width: 300,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border:
                        Border.all(color: const Color(0xFFFF5842), width: 1.8),
                    borderRadius: BorderRadius.circular(20)),
                child: const Text(
                  "Create Account",
                  style: TextStyle(
                      color: Color(0xFFFF5842),
                      fontSize: 17,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 45,
                width: 45,
                margin: const EdgeInsets.only(
                    top: 50, left: 10, right: 10, bottom: 10),
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFFF7F8F3),
                ),
                child: const Text("fb",
                    style: TextStyle(
                        color: Color(0xFFFF5842),
                        fontWeight: FontWeight.w700,
                        fontSize: 18)),
              ),
              Container(
                height: 45,
                width: 45,
                margin: const EdgeInsets.only(
                    top: 50, left: 10, right: 10, bottom: 10),
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFFF7F8F3),
                ),
                child: const Text("in",
                    style: TextStyle(
                        color: Color(0xFFFF5842),
                        fontWeight: FontWeight.w700,
                        fontSize: 18)),
              ),
              Container(
                height: 45,
                width: 45,
                margin: const EdgeInsets.only(
                    top: 50, left: 10, right: 10, bottom: 10),
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFFF7F8F3),
                ),
                child: const Text("g+",
                    style: TextStyle(
                        color: Color(0xFFFF5842),
                        fontWeight: FontWeight.w700,
                        fontSize: 18)),
              ),
              Container(
                height: 45,
                width: 45,
                margin: const EdgeInsets.only(
                    top: 50, left: 10, right: 10, bottom: 10),
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFFF7F8F3),
                ),
                child: const Text("tw",
                    style: TextStyle(
                        color: Color(0xFFFF5842),
                        fontWeight: FontWeight.w700,
                        fontSize: 18)),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: SizedBox(
                  child: Text("Sign in with another account",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w400)),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
