import 'package:flutter/material.dart';

class ListViewDemo extends StatefulWidget {
  const ListViewDemo({Key? key}) : super(key: key);

  @override
  State<ListViewDemo> createState() => _ListViewDemoState();
}

class _ListViewDemoState extends State<ListViewDemo> {
  List tvList = [
    {
      "images":
          "https://m.media-amazon.com/images/I/81UT46-gwRL._AC_UY327_FMwebp_QL65_.jpg",
      "name":
          "MI 125 cm (50 inches) X Series 4K Ultra HD Smart Android LED TV L50M7-A2IN (Black)",
      "ratting": 4.2,
      "price": 39999,
      "m.r.p.": 54999,
      "offers": "Flat INR 1500 Off on HDFC BankCards",
      "delivery time": " Fri, 30 Jun, 7:00 AM - 9:00 PM",
      "available services": "Installation at delivery",
    },
    {
      "images":
          "https://m.media-amazon.com/images/I/716LfJ7-2RL._AC_UY327_FMwebp_QL65_.jpg",
      "name":
          "VU 139 cm (55 inches) The GloLED Series 4K Smart LED Google TV 55GloLED (Grey)",
      "ratting": 4.5,
      "deal": "limited time deal",
      "price": 39999,
      "m.r.p.": 65000,
      "offers": "Save extra with No Cost EMI",
      "delivery time": " Fri, 30 Jun, 7:00 AM - 9:00 PM",
      "available services": "Installation at delivery",
    },
    {
      "images":
          "https://m.media-amazon.com/images/I/71a4ZQNqTiL._AC_UY327_FMwebp_QL65_.jpg",
      "tag": "Amazon's choice",
      "name":
          "Samsung 80 cm (32 Inches) Wondertainment Series HD Ready LED Smart TV UA32T4340BKXXL (Glossy Black)",
      "ratting": 4.2,
      "deal": "limited time deal",
      "price": 13490,
      "m.r.p.": 22900,
      "offers": "Save extra with No Cost EMI",
      "delivery time": " Fri, 30 Jun, 7:00 AM - 9:00 PM",
    },
    {
      "images":
          "https://m.media-amazon.com/images/I/71RNJ5AGNBL._AC_UY327_FMwebp_QL65_.jpg",
      "name":
          "Acer 139 cm (55 inches) I Series 4K Ultra HD Android Smart LED TV AR55AR2851UDFL (Black)",
      "ratting": 4.4,
      "price": 32999,
      "m.r.p.": 47990,
      "offers": "Save extra with No Cost EMI",
      "delivery time": " Fri, 30 Jun, 7:00 AM - 9:00 PM",
      "available services": "Installation at delivery",
    },
    {
      "images":
          "https://m.media-amazon.com/images/I/81tD7OZ0RXL._AC_UY327_FMwebp_QL65_.jpg",
      "name":
          "MI 80 cm (32 inches) 5A Series HD Ready Smart Android LED TV L32M7-5AIN (Black)",
      "ratting": 4.2,
      "price": 13990,
      "m.r.p.": 24999,
      "offers": "Flat INR 750 Off on HDFC BankCards",
      "delivery time": " Fri, 30 Jun, 7:00 AM - 9:00 PM",
      "available services": "Installation at delivery",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(scrollDirection: Axis.vertical, children: [
        const Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              "Results",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
          ),
        ),
        ListView.builder(
          itemCount: tvList.length,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            return SingleChildScrollView(
              child: Container(
                height: 230,
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.only(bottom: 15, left: 10, right: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: const Color(0xffA9A9A9).withOpacity(0.30),
                  ),
                ),
                child: Row(
                  children: [
                    Container(
                      height: 230,
                      padding: const EdgeInsets.only(
                          top: 5, bottom: 20, left: 5, right: 5),
                      width: 130,
                      margin: const EdgeInsets.only(right: 15),
                      decoration: const BoxDecoration(
                        color: Color(0xffF7F7F7),
                      ),
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Image(
                              image: NetworkImage(tvList[index]["images"]),
                              height: 100,
                              width: 120,
                            ),
                          ),
                          if (tvList[index]["tag"] != null)
                            Align(
                              alignment: Alignment.topLeft,
                              child: Container(
                                height: 20,
                                width: 90,
                                alignment: Alignment.center,
                                color: const Color(0xff002F36),
                                child: Text(
                                  tvList[index]["tag"],
                                  style: const TextStyle(
                                      fontSize: 10, color: Colors.white),
                                ),
                              ),
                            )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20, bottom: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              tvList[index]["name"],
                              style: const TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                            if (tvList[index]["ratting"] <= 4.2)
                              Row(
                                children: [
                                  Text(
                                    "${tvList[index]["ratting"]}",
                                    style: const TextStyle(
                                        color: Colors.blue, fontSize: 11),
                                  ),
                                  const Icon(
                                    Icons.star,
                                    color: Color(0xffFFA41C),
                                    size: 18,
                                  ),
                                  const Icon(
                                    Icons.star,
                                    color: Color(0xffFFA41C),
                                    size: 18,
                                  ),
                                  const Icon(
                                    Icons.star,
                                    color: Color(0xffFFA41C),
                                    size: 18,
                                  ),
                                  const Icon(
                                    Icons.star,
                                    color: Color(0xffFFA41C),
                                    size: 18,
                                  ),
                                  const Icon(
                                    Icons.star_border_purple500_outlined,
                                    color: Color(0xffFFA41C),
                                    size: 18,
                                  )
                                ],
                              )
                            else
                              Row(
                                children: [
                                  Text(
                                    "${tvList[index]["ratting"]}",
                                    style: const TextStyle(
                                        color: Colors.blue, fontSize: 11),
                                  ),
                                  const Icon(
                                    Icons.star,
                                    color: Color(0xffFFA41C),
                                    size: 18,
                                  ),
                                  const Icon(
                                    Icons.star,
                                    color: Color(0xffFFA41C),
                                    size: 18,
                                  ),
                                  const Icon(
                                    Icons.star,
                                    color: Color(0xffFFA41C),
                                    size: 18,
                                  ),
                                  const Icon(
                                    Icons.star,
                                    color: Color(0xffFFA41C),
                                    size: 18,
                                  ),
                                  const Icon(
                                    Icons.star_half_sharp,
                                    color: Color(0xffFFA41C),
                                    size: 18,
                                  )
                                ],
                              ),
                            if (tvList[index]["deal"] != null)
                              Container(
                                color: const Color(0xffB12704),
                                height: 20,
                                width: 90,
                                alignment: Alignment.center,
                                child: Text(
                                  tvList[index]["deal"],
                                  style: const TextStyle(
                                      fontSize: 10, color: Colors.white),
                                ),
                              ),
                            RichText(
                              text: TextSpan(
                                  text: "${tvList[index]["price"]}",
                                  style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black87),
                                  children: [
                                    const TextSpan(
                                      text: "  M.R.P: ",
                                      style: TextStyle(
                                          fontSize: 11,
                                          color: Colors.black87,
                                          fontWeight: FontWeight.w300),
                                    ),
                                    TextSpan(
                                      text: "${tvList[index]["m.r.p."]}",
                                      style: const TextStyle(
                                          fontSize: 11,
                                          color: Colors.black87,
                                          decoration:
                                              TextDecoration.lineThrough,
                                          fontWeight: FontWeight.w300),
                                    ),
                                    TextSpan(
                                      text:
                                          "(${((tvList[index]["price"]) * 100) / (tvList[index]["m.r.p."])}% off)",
                                      style: const TextStyle(
                                          fontSize: 11,
                                          color: Colors.black87,
                                          fontWeight: FontWeight.w300),
                                    )
                                  ]),
                            ),
                            Text(
                              tvList[index]["offers"],
                              style: const TextStyle(
                                  fontSize: 11,
                                  color: Colors.black87,
                                  fontWeight: FontWeight.w300),
                            ),
                            RichText(
                              text: TextSpan(
                                  text: "FREE delivery by ",
                                  style: const TextStyle(
                                      fontSize: 10,
                                      color: Colors.black87,
                                      fontWeight: FontWeight.w300),
                                  children: [
                                    TextSpan(
                                      text: tvList[index]["delivery time"],
                                      style: const TextStyle(
                                          fontSize: 11,
                                          color: Colors.black87,
                                          fontWeight: FontWeight.w500),
                                    )
                                  ]),
                            ),
                            if (tvList[index]["available services"] != null)
                              RichText(
                                text: TextSpan(
                                    text: "Available Services: ",
                                    style: const TextStyle(
                                        fontSize: 11,
                                        color: Colors.black87,
                                        fontWeight: FontWeight.w400),
                                    children: [
                                      TextSpan(
                                        text: tvList[index]
                                            ["available services"],
                                        style: const TextStyle(
                                            fontSize: 11,
                                            color: Colors.black87,
                                            fontWeight: FontWeight.w500),
                                      )
                                    ]),
                              ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ]),
    );
  }
}
