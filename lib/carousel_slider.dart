import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CarouselSlider0 extends StatefulWidget {
  const CarouselSlider0({super.key});

  @override
  State<CarouselSlider0> createState() => _CarouselSlider0State();
}

class _CarouselSlider0State extends State<CarouselSlider0> {
  List imageList = ["1", "2", "3", "4", "5"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: CarouselSlider(
        options: CarouselOptions(
            height: 200.0,
            enableInfiniteScroll: true,
            autoPlay: true,
            enlargeCenterPage: true,
            viewportFraction: 0.5),
        items: imageList.map((i) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                height: 200,
                width: 300,
                alignment: Alignment.center,
                decoration: BoxDecoration(color: Colors.blue),
                child: Text("page $i",
                    style: TextStyle(color: Colors.white, fontSize: 20)),
              );
            },
          );
        }).toList(),
      ),
    ));
  }
}
