import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class AutoScrollingCarousel extends StatelessWidget {
  const AutoScrollingCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Carousel(),
      ),
    );
  }
}

class Carousel extends StatelessWidget {
  final List<String> imgList = [
    'assets_images/carousel1.jpg',
    'assets_images/carousel2.jpg',
    'assets_images/carousel3.jpg',
  ];

  Carousel({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 5),
      ),
      items: imgList.map((item) => Center(
          child: Image.asset(item)
      )).toList(),
    );
  }
}
