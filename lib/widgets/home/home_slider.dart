import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../../utils/images/slider_images.dart';

class Carousel extends StatelessWidget {
  const Carousel({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 200,
        aspectRatio: 16 / 9,
        viewportFraction: 0.85,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 3),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        enlargeFactor: 0.3,
        scrollDirection: Axis.horizontal,
      ),
      items: imgList
          .map((item) => ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image(image: item, fit: BoxFit.cover, width: 800)))
          .toList(),
    );
  }
}
