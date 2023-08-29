import 'package:flutter/material.dart';

class Scroll extends StatelessWidget {
  const Scroll({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu, size: 27),
        backgroundColor: const Color(0xFF059AF8),
        title: const Text("Dashboard",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 22)),
        leadingWidth: 100,
        elevation: 0,
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color(0xFFF8F8F8),
          unselectedItemColor: const Color(0xFFA6A6A6),
          selectedItemColor: const Color(0xFF418BA7),
          showUnselectedLabels: true,
          iconSize: 30,
          unselectedFontSize: 14.5,
          selectedFontSize: 14.5,
          elevation: 40,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.dashboard_customize), label: "Dashboard"),
            BottomNavigationBarItem(
                icon: Icon(Icons.file_copy), label: "Report"),
            BottomNavigationBarItem(
                icon: Icon(Icons.people_alt), label: "Customers"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
            BottomNavigationBarItem(icon: Icon(Icons.menu), label: "Menu"),
          ]),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: const Color(0xFFF2F3F7),
            ),
            Container(
              height: 110,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  color: Color(0xFF059AF8),
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(1000),
                      bottomLeft: Radius.circular(1000))),
            ),
            Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 27, right: 25, top: 70),
                      child: Card(
                        color: const Color(0xFFFFFFFF),
                        elevation: 10,
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: SizedBox(
                            height: 230,
                            width: MediaQuery.of(context).size.width / 2.5,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(bottom: 40, top: 40),
                              child: Column(
                                children: const [
                                  Icon(
                                    Icons.file_present_rounded,
                                    color: Color(0xFF9AC8F9),
                                    size: 55,
                                  ),
                                  Text(
                                    "5",
                                    style: TextStyle(
                                        fontSize: 25,
                                        color: Color(0xFF29CDA3),
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    "Invoice",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Color(0xFF9E9E9E),
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 3),
                                    child: Text(
                                      "View More",
                                      style: TextStyle(
                                          fontSize: 17,
                                          color: Color(0xFF6C9CA6),
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ],
                              ),
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 27, top: 70),
                      child: Card(
                        color: const Color(0xFFFFFFFF),
                        elevation: 10,
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: SizedBox(
                            height: 230,
                            width: MediaQuery.of(context).size.width / 2.5,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(bottom: 40, top: 40),
                              child: Column(
                                children: const [
                                  Icon(
                                    Icons.contact_page,
                                    color: Color(0xFF9AC8F9),
                                    size: 55,
                                  ),
                                  Text(
                                    "3",
                                    style: TextStyle(
                                        fontSize: 25,
                                        color: Color(0xFF2A8FBE),
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    "Supplier",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Color(0xFF9E9E9E),
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 3),
                                    child: Text(
                                      "View More",
                                      style: TextStyle(
                                          fontSize: 17,
                                          color: Color(0xFF6C9CA6),
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ],
                              ),
                            )),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 27, right: 25, top: 20),
                      child: Card(
                        color: const Color(0xFFFFFFFF),
                        elevation: 10,
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: SizedBox(
                            height: 230,
                            width: MediaQuery.of(context).size.width / 2.5,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(bottom: 40, top: 40),
                              child: Column(
                                children: const [
                                  Padding(
                                    padding: EdgeInsets.only(left: 15),
                                    child: Icon(
                                      Icons.person_add_alt_1_sharp,
                                      color: Color(0xFF379AF9),
                                      size: 60,
                                    ),
                                  ),
                                  Text(
                                    "3",
                                    style: TextStyle(
                                        fontSize: 25,
                                        color: Color(0xFFEDC193),
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    "Customer",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Color(0xFF9E9E9E),
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 3),
                                    child: Text(
                                      "View More",
                                      style: TextStyle(
                                          fontSize: 17,
                                          color: Color(0xFF6C9CA6),
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ],
                              ),
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 27, top: 20),
                      child: Card(
                        color: const Color(0xFFFFFFFF),
                        elevation: 10,
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: SizedBox(
                            height: 230,
                            width: MediaQuery.of(context).size.width / 2.5,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(bottom: 40, top: 40),
                              child: Column(
                                children: const [
                                  Icon(
                                    Icons.settings_overscan_rounded,
                                    color: Color(0xFF5896E3),
                                    size: 55,
                                  ),
                                  Text(
                                    "2",
                                    style: TextStyle(
                                        fontSize: 25,
                                        color: Color(0xFFD2E8A9),
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    "Product",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Color(0xFF9E9E9E),
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 3),
                                    child: Text(
                                      "View More",
                                      style: TextStyle(
                                          fontSize: 17,
                                          color: Color(0xFF6C9CA6),
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ],
                              ),
                            )),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 25, right: 25, top: 30, bottom: 25),
                      child: Card(
                        color: const Color(0xFFFFFFFF),
                        elevation: 15,
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        child: SizedBox(
                          height: 200,
                          width: MediaQuery.of(context).size.width - 60,
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Column(children: [
                              const Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "Total Receiving - 2022",
                                    style: TextStyle(
                                        color: Color(0xFF121116),
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500),
                                  )),
                              Row(
                                children: const [
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: 15, right: 100, bottom: 5),
                                    child: Text(
                                      "\$ 0.00",
                                      style: TextStyle(
                                          fontSize: 60,
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xFFCBE585)),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 20),
                                    child: Icon(
                                      Icons.shopping_cart,
                                      color: Color(0xFFBFE2FF),
                                      size: 65,
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: const [
                                  Padding(
                                    padding: EdgeInsets.only(right: 73),
                                    child: Text(
                                      "Last update yesterday",
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xFFACACAC)),
                                    ),
                                  ),
                                  Text(
                                    "View more",
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xFF3FA889)),
                                  ),
                                  Icon(
                                    Icons.keyboard_arrow_up_sharp,
                                    color: Color(0xFF3FA889),
                                    size: 40,
                                  )
                                ],
                              ),
                            ]),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 25, left: 25),
                      child: Card(
                        color: const Color(0xFFFFFFFF),
                        elevation: 15,
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        child: SizedBox(
                          height: 200,
                          width: MediaQuery.of(context).size.width - 60,
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Column(children: [
                              const Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "Total Sale - 2022",
                                    style: TextStyle(
                                        color: Color(0xFF121116),
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500),
                                  )),
                              Row(
                                children: const [
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: 15, right: 100, bottom: 5),
                                    child: Text(
                                      "\$ 0.00",
                                      style: TextStyle(
                                          fontSize: 60,
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xFF27D5A6)),
                                    ),
                                  ),
                                  Icon(
                                    Icons.account_balance_wallet,
                                    color: Color(0xFF349AFD),
                                    size: 65,
                                  ),
                                ],
                              ),
                              Row(
                                children: const [
                                  Padding(
                                    padding: EdgeInsets.only(right: 73),
                                    child: Text(
                                      "Last update yesterday",
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xFFACACAC)),
                                    ),
                                  ),
                                  Text(
                                    "View more",
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xFF3FA889)),
                                  ),
                                  Icon(
                                    Icons.keyboard_arrow_up_sharp,
                                    color: Color(0xFF3FA889),
                                    size: 40,
                                  )
                                ],
                              ),
                            ]),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 25, right: 25.0, left: 25),
                      child: Card(
                        color: const Color(0xFFFFFFFF),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        elevation: 15,
                        child: SizedBox(
                          height: 650,
                          width: MediaQuery.of(context).size.width - 60,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 20.0, right: 20, bottom: 25, top: 35),
                            child: Column(children: [
                              Row(
                                children: const [
                                  Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        "Receiving",
                                        style: TextStyle(
                                            color: Color(0xFF161618),
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500),
                                      )),
                                ],
                              ),
                              Row(
                                children: const [
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: 5,
                                      bottom: 20,
                                      right: 170,
                                    ),
                                    child: Text(
                                      "Recently added",
                                      style: TextStyle(
                                          color: Color(0xFFAFAFAF),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    height: 215,
                                    width:
                                        MediaQuery.of(context).size.width - 100,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        border: Border.all(
                                            color: const Color(0xFFEEEEEE),
                                            width: 2)),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          top: 35,
                                          bottom: 35,
                                          left: 20,
                                          right: 20),
                                      child: Column(
                                        children: [
                                          Row(
                                            children: const [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  right: 75,
                                                ),
                                                child: Text("INVOICE DATE",
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFF2B88B6),
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.w500)),
                                              ),
                                              Text("INVOICE NUM",
                                                  style: TextStyle(
                                                      color: Color(0xFF2B88B6),
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.w500)),
                                            ],
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 7, bottom: 30),
                                            child: Row(
                                              children: const [
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      right: 55),
                                                  child: Text("04-03-2021",
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xFF949494),
                                                          fontSize: 23,
                                                          fontWeight:
                                                              FontWeight.w400)),
                                                ),
                                                Text("231332",
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFF949494),
                                                        fontSize: 23,
                                                        fontWeight:
                                                            FontWeight.w400)),
                                              ],
                                            ),
                                          ),
                                          Row(
                                            children: const [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    right: 105, bottom: 7),
                                                child: Text("COMPANY",
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFF2B88B6),
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.w500)),
                                              ),
                                              Text("AMMOUNT",
                                                  style: TextStyle(
                                                      color: Color(0xFF2B88B6),
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.w500)),
                                            ],
                                          ),
                                          Row(
                                            children: const [
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(right: 70),
                                                child: Text("Supplier 1",
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFF949494),
                                                        fontSize: 23,
                                                        fontWeight:
                                                            FontWeight.w400)),
                                              ),
                                              Text("\$ 111.00",
                                                  style: TextStyle(
                                                      color: Color(0xFF949494),
                                                      fontSize: 23,
                                                      fontWeight:
                                                          FontWeight.w400)),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    height: 215,
                                    margin: const EdgeInsets.only(
                                      top: 30,
                                      bottom: 22,
                                    ),
                                    width:
                                        MediaQuery.of(context).size.width - 100,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        border: Border.all(
                                            color: const Color(0xFFEEEEEE),
                                            width: 2)),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          top: 35,
                                          bottom: 35,
                                          left: 20,
                                          right: 20),
                                      child: Column(
                                        children: [
                                          Row(
                                            children: const [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  right: 75,
                                                ),
                                                child: Text("INVOICE DATE",
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFF2B88B6),
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.w500)),
                                              ),
                                              Text("INVOICE NUM",
                                                  style: TextStyle(
                                                      color: Color(0xFF2B88B6),
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.w500)),
                                            ],
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 7, bottom: 30),
                                            child: Row(
                                              children: const [
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      right: 55),
                                                  child: Text("04-03-2021",
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xFF949494),
                                                          fontSize: 23,
                                                          fontWeight:
                                                              FontWeight.w400)),
                                                ),
                                                Text("231332",
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFF949494),
                                                        fontSize: 23,
                                                        fontWeight:
                                                            FontWeight.w400)),
                                              ],
                                            ),
                                          ),
                                          Row(
                                            children: const [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    right: 105, bottom: 7),
                                                child: Text("COMPANY",
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFF2B88B6),
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.w500)),
                                              ),
                                              Text("AMMOUNT",
                                                  style: TextStyle(
                                                      color: Color(0xFF2B88B6),
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.w500)),
                                            ],
                                          ),
                                          Row(
                                            children: const [
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(right: 70),
                                                child: Text("Supplier 1",
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFF949494),
                                                        fontSize: 23,
                                                        fontWeight:
                                                            FontWeight.w400)),
                                              ),
                                              Text("\$ 101.00",
                                                  style: TextStyle(
                                                      color: Color(0xFF949494),
                                                      fontSize: 23,
                                                      fontWeight:
                                                          FontWeight.w400)),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 253),
                                child: Row(
                                  children: const [
                                    Text(
                                      "View more",
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xFF3FA889)),
                                    ),
                                    Icon(
                                      Icons.keyboard_arrow_up_sharp,
                                      color: Color(0xFF3FA889),
                                      size: 40,
                                    )
                                  ],
                                ),
                              ),
                            ]),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 25, right: 25.0, left: 25, bottom: 70),
                      child: Card(
                        color: const Color(0xFFFFFFFF),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        elevation: 15,
                        child: SizedBox(
                          height: 405,
                          width: MediaQuery.of(context).size.width - 60,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 20.0, right: 20, bottom: 25, top: 35),
                            child: Column(children: [
                              Row(
                                children: const [
                                  Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        "Expenses",
                                        style: TextStyle(
                                            color: Color(0xFF161618),
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500),
                                      )),
                                ],
                              ),
                              Row(
                                children: const [
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: 5,
                                      bottom: 20,
                                      right: 170,
                                    ),
                                    child: Text(
                                      "Recently added",
                                      style: TextStyle(
                                          color: Color(0xFFAFAFAF),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    height: 215,
                                    width:
                                        MediaQuery.of(context).size.width - 100,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        border: Border.all(
                                            color: const Color(0xFFEEEEEE),
                                            width: 2)),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          top: 35,
                                          bottom: 35,
                                          left: 20,
                                          right: 20),
                                      child: Column(
                                        children: [
                                          Row(
                                            children: const [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  right: 75,
                                                ),
                                                child: Text("INVOICE DATE",
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFF2B88B6),
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.w500)),
                                              ),
                                              Text("INVOICE NUM",
                                                  style: TextStyle(
                                                      color: Color(0xFF2B88B6),
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.w500)),
                                            ],
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 7, bottom: 30),
                                            child: Row(
                                              children: const [
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      right: 55),
                                                  child: Text("04-03-2021",
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xFF949494),
                                                          fontSize: 23,
                                                          fontWeight:
                                                              FontWeight.w400)),
                                                ),
                                                Text("231332",
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFF949494),
                                                        fontSize: 23,
                                                        fontWeight:
                                                            FontWeight.w400)),
                                              ],
                                            ),
                                          ),
                                          Row(
                                            children: const [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    right: 105, bottom: 7),
                                                child: Text("COMPANY",
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFF2B88B6),
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.w500)),
                                              ),
                                              Text("AMMOUNT",
                                                  style: TextStyle(
                                                      color: Color(0xFF2B88B6),
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.w500)),
                                            ],
                                          ),
                                          Row(
                                            children: const [
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(right: 70),
                                                child: Text("Supplier 1",
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFF949494),
                                                        fontSize: 23,
                                                        fontWeight:
                                                            FontWeight.w400)),
                                              ),
                                              Text("\$ 111.00",
                                                  style: TextStyle(
                                                      color: Color(0xFF949494),
                                                      fontSize: 23,
                                                      fontWeight:
                                                          FontWeight.w400)),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 253, top: 22),
                                child: Row(
                                  children: const [
                                    Text(
                                      "View more",
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xFF3FA889)),
                                    ),
                                    Icon(
                                      Icons.keyboard_arrow_up_sharp,
                                      color: Color(0xFF3FA889),
                                      size: 40,
                                    )
                                  ],
                                ),
                              ),
                            ]),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
