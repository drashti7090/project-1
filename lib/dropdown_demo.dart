import 'package:flutter/material.dart';

class DropdownDemo extends StatefulWidget {
  const DropdownDemo({Key? key}) : super(key: key);

  @override
  State<DropdownDemo> createState() => _DropdownDemoState();
}

class _DropdownDemoState extends State<DropdownDemo> {
  List countryList = [
    {
      "countryName": "india",
      "states": [
        {
          "state": "gujarat",
          "city": ["surat", "vapi", "bardoli"]
        },
        {
          "state": "maharashtra",
          "city": ["mumbai", "nashik", "pune"]
        },
        {
          "state": "rajasthan",
          "city": ["jaipur", "udaipur", "jaisalmer"]
        },
      ]
    },
    {
      "countryName": "us",
      "states": [
        {
          "state": "california",
          "city": ["napa", "san fransico", "reno"]
        },
        {
          "state": "new mexico",
          "city": ["luna", "otero", "eddy"]
        },
        {
          "state": "montana",
          "city": ["yellow stone country", "SE montana", "missouri R country"]
        },
      ]
    }
  ];
  var selectCountry;
  List stateList = [];
  var selectState;
  List cityList = [];
  var selectCity;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        DropdownButton(
          value: selectCountry,
          hint: const Text("country"),
          dropdownColor: Colors.lightGreenAccent,
          elevation: 50,
          focusColor: Colors.indigo,
          items: countryList
              .map((e) => DropdownMenuItem(
                    value: e["states"],
                    child: Text(e["countryName"],
                        style: const TextStyle(color: Colors.black)),
                  ))
              .toList(),
          onChanged: (v) {
            print(v);
            selectCountry = v as List;
            stateList = v;
            selectState = null;
            selectCity = null;
            setState(() {});
          },
          borderRadius: BorderRadius.circular(5),
        ),
        DropdownButton(
          value: selectState,
          hint: const Text("state"),
          dropdownColor: Colors.lightGreenAccent,
          elevation: 50,
          focusColor: Colors.indigo,
          items: stateList
              .map((e) =>
                  DropdownMenuItem(value: e["city"], child: Text(e["state"])))
              .toList(),
          onChanged: (v) {
            print(v);
            selectState = v as List;
            cityList = v;
            selectCity = null;
            setState(() {});
          },
          borderRadius: BorderRadius.circular(5),
        ),
        DropdownButton(
          value: selectCity,
          hint: const Text("city"),
          dropdownColor: Colors.lightGreenAccent,
          elevation: 50,
          focusColor: Colors.indigo,
          items: cityList
              .map((e) => DropdownMenuItem(
                    value: e,
                    child: Text(e),
                  ))
              .toList(),
          onChanged: (v) {
            print(v);
            selectCity = v;
            setState(() {});
          },
          borderRadius: BorderRadius.circular(5),
        ),
      ],
    ));
  }
}
