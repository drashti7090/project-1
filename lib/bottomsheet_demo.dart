import 'package:flutter/material.dart';

class BottomSheetDemo extends StatelessWidget {
  const BottomSheetDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://papers.co/wallpaper/papers.co-mk20-dark-sunset-snow-mountain-nature-34-iphone6-plus-wallpaper.jpg"),
                fit: BoxFit.fill)),
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 65,
                  width: 65,
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(top: 80, left: 60),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFFE0E3E4)),
                  child: const Text("Tx",
                      style: TextStyle(
                          color: Color(0xFFD22D25),
                          fontSize: 35,
                          fontWeight: FontWeight.w700)),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 70, left: 60),
                  child: Text(
                    "You deserve to\nexplore more.",
                    style: TextStyle(fontSize: 28, color: Color(0xFFBCC1C9)),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 70, right: 70, top: 270),
                        child: ElevatedButton(
                          onPressed: () {
                            showModalBottomSheet(
                                context: context,
                                backgroundColor: Colors.transparent,
                                isScrollControlled: true,
                                builder: (BuildContext context) {
                                  return Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Container(
                                        height: 490,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(40),
                                          color: const Color(0xffFFFFFF),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              top: 55, right: 50, left: 50),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  const Text("New\nAccount",
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xff297670),
                                                          fontSize: 30,
                                                          fontWeight:
                                                              FontWeight.w600)),
                                                  Column(
                                                    children: [
                                                      Container(
                                                        height: 70,
                                                        width: 70,
                                                        decoration:
                                                            BoxDecoration(
                                                          shape:
                                                              BoxShape.circle,
                                                          color: Colors
                                                              .transparent,
                                                          border: Border.all(
                                                              color: const Color(
                                                                      0xff297670)
                                                                  .withOpacity(
                                                                      0.50),
                                                              width: 1),
                                                        ),
                                                        child: const Icon(
                                                            Icons
                                                                .photo_camera_outlined,
                                                            size: 35),
                                                      ),
                                                      const Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                top: 2.0),
                                                        child: Text(
                                                            "Uplod Picture",
                                                            style: TextStyle(
                                                                fontSize: 13,
                                                                color: Colors
                                                                    .grey)),
                                                      )
                                                    ],
                                                  )
                                                ],
                                              ),
                                              const Padding(
                                                padding: EdgeInsets.only(
                                                    top: 25, bottom: 5),
                                                child: Text("Email",
                                                    style: TextStyle(
                                                        color: Colors.grey,
                                                        fontSize: 15)),
                                              ),
                                              Row(
                                                children: const [
                                                  Icon(Icons.mail_rounded),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 15.0),
                                                    child: Text(
                                                        "skiplab@gmail.com"),
                                                  )
                                                ],
                                              ),
                                              const Divider(
                                                color: Color(0xff2E847D),
                                                endIndent: 15,
                                              ),
                                              const Padding(
                                                padding: EdgeInsets.only(
                                                    top: 10.0, bottom: 5),
                                                child: Text("UserName",
                                                    style: TextStyle(
                                                        color: Colors.grey,
                                                        fontSize: 15)),
                                              ),
                                              Row(
                                                children: const [
                                                  Icon(Icons.person),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 15.0),
                                                    child: Text("Skiplab"),
                                                  )
                                                ],
                                              ),
                                              const Divider(
                                                color: Color(0xff2E847D),
                                                endIndent: 15,
                                              ),
                                              const Padding(
                                                padding: EdgeInsets.only(
                                                    top: 10.0, bottom: 5),
                                                child: Text("Password",
                                                    style: TextStyle(
                                                        color: Colors.grey,
                                                        fontSize: 15)),
                                              ),
                                              Row(
                                                children: const [
                                                  Icon(Icons.vpn_key_rounded),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 15),
                                                    child: Text(
                                                      "......",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w900,
                                                          fontSize: 20),
                                                    ),
                                                  )
                                                ],
                                              ),
                                              const Divider(
                                                color: Color(0xff2E847D),
                                                endIndent: 15,
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 15,
                                                    bottom: 20,
                                                    left: 20,
                                                    right: 20),
                                                child: ElevatedButton(
                                                  onPressed: () {},
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        35)),
                                                    backgroundColor:
                                                        const Color(0xff2E847D),
                                                  ),
                                                  child: const SizedBox(
                                                      height: 70,
                                                      child: Center(
                                                          child: Text(
                                                        "Sign up",
                                                        style: TextStyle(
                                                            color: Color(
                                                                0xff98CCCB),
                                                            fontSize: 20,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400),
                                                      ))),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  );
                                });
                          },
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(35)),
                            backgroundColor: const Color(0xff2E847D),
                          ),
                          child: const SizedBox(
                              height: 70,
                              child: Center(
                                  child: Text(
                                "Sign up",
                                style: TextStyle(
                                    color: Color(0xff98CCCB),
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400),
                              ))),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding:
                            const EdgeInsets.only(left: 70, right: 70, top: 18),
                        child: ElevatedButton(
                          onPressed: () {
                            showModalBottomSheet(
                                context: context,
                                backgroundColor: Colors.transparent,
                                isDismissible: false,
                                isScrollControlled: true,
                                builder: (BuildContext context) {
                                  return Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Container(
                                        height: 490,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(40),
                                          color: const Color(0xffFFFFFF),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              top: 50, right: 50, left: 50),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  const Text(
                                                      "Welcome back\nSkiplab",
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xff297670),
                                                          fontSize: 30,
                                                          fontWeight:
                                                              FontWeight.w600)),
                                                  SizedBox(
                                                    height: 70,
                                                    width: 70,
                                                    child: ClipOval(
                                                        child: Image.network(
                                                      "https://www.shutterstock.com/image-photo/profile-side-view-portrait-her-260nw-1772014736.jpg",
                                                      fit: BoxFit.cover,
                                                    )),
                                                  )
                                                ],
                                              ),
                                              const Padding(
                                                padding: EdgeInsets.only(
                                                    top: 30, bottom: 5),
                                                child: Text("Password",
                                                    style: TextStyle(
                                                        color: Colors.grey,
                                                        fontSize: 15)),
                                              ),
                                              Row(
                                                children: const [
                                                  Icon(Icons.vpn_key_rounded),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 15),
                                                    child: Text(
                                                      "......",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w900,
                                                          fontSize: 20),
                                                    ),
                                                  )
                                                ],
                                              ),
                                              const Divider(
                                                color: Color(0xff2E847D),
                                                endIndent: 15,
                                              ),
                                              Align(
                                                alignment: Alignment.topRight,
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 2, right: 13),
                                                  child: TextButton(
                                                      onPressed: () {},
                                                      child: const Text(
                                                        "Forgot password?",
                                                        style: TextStyle(
                                                            color: Color(
                                                                0xff2E847D),
                                                            fontSize: 13,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w300),
                                                      )),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 30,
                                                    bottom: 7,
                                                    left: 20,
                                                    right: 20),
                                                child: ElevatedButton(
                                                  onPressed: () {},
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        35)),
                                                    backgroundColor:
                                                        const Color(0xff2E847D),
                                                  ),
                                                  child: const SizedBox(
                                                      height: 70,
                                                      child: Center(
                                                          child: Text(
                                                        "Sign in",
                                                        style: TextStyle(
                                                            color: Color(
                                                                0xff98CCCB),
                                                            fontSize: 20,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400),
                                                      ))),
                                                ),
                                              ),
                                              const Center(
                                                  child: Text(
                                                "or sign with",
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: Colors.grey),
                                              )),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 120,
                                                    left: 120,
                                                    top: 15,
                                                    bottom: 20),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Image.network(
                                                      "https://www.freepnglogos.com/uploads/google-logo-png/google-logo-icon-png-transparent-background-osteopathy-16.png",
                                                      height: 30,
                                                      width: 30,
                                                      fit: BoxFit.fill,
                                                    ),
                                                    Image.network(
                                                      "https://www.freepnglogos.com/uploads/facebook-logo-13.png",
                                                      height: 28,
                                                      width: 28,
                                                      fit: BoxFit.fill,
                                                    ),
                                                    Image.network(
                                                      "https://assets.stickpng.com/images/580b57fcd9996e24bc43c53e.png",
                                                      height: 35,
                                                      width: 35,
                                                      fit: BoxFit.fill,
                                                    ),
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  );
                                });
                          },
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(35)),
                            backgroundColor: const Color(0xFFE0E3E4),
                          ),
                          child: const SizedBox(
                              height: 70,
                              child: Center(
                                  child: Text(
                                "Sign in",
                                style: TextStyle(
                                    color: Color(0xff97B9B1),
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400),
                              ))),
                        ),
                      ),
                    ),
                  ],
                ),
                commonButton(
                  name: "sign in",
                  buttonBackgroundColor: Colors.blue,
                  buttonPress: () {},
                ),
              ]),
        ),
      ),
    );
  }

  Widget commonButton(
      {String? name, Color? buttonBackgroundColor, Function()? buttonPress}) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, bottom: 20, left: 70, right: 70),
      child: ElevatedButton(
        onPressed: buttonPress,
        style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(35)),
          backgroundColor: buttonBackgroundColor ?? const Color(0xff2E847D),
        ),
        child: SizedBox(
            height: 70,
            child: Center(
                child: Text(
              "$name",
              style: const TextStyle(
                  color: Color(0xff98CCCB),
                  fontSize: 20,
                  fontWeight: FontWeight.w400),
            ))),
      ),
    );
  }
}
