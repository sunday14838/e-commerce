import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ImageSlide extends StatefulWidget {
  ImageSlide({Key? key}) : super(key: key);

 static ImageSlide imageSlide=ImageSlide();
  @override
  State<ImageSlide> createState() => _ImageSlideState();
}

class _ImageSlideState extends State<ImageSlide> {
  int activeindex = 0;

  final controller = PageController(viewportFraction: 0.8, keepPage: true);

  List images = [
    'images/orange.jpeg',
    'images/pinapple.jpeg',
    'images/apple.jpeg',
    'images/banana.jpeg',
    'images/pawpaw.jpeg',
    'images/plantain.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: CarouselSlider.builder(
              itemCount: images.length,
              options: CarouselOptions(
                  aspectRatio: 6 / 5,
                  autoPlay: true,
                  onPageChanged: (index, reason) {
                    setState(() {
                      activeindex = index;
                    });
                  },
                  enlargeCenterPage: true,
                  autoPlayInterval: Duration(seconds: 2)),
              itemBuilder: (context, index, realindex) {
                final image = images[index];
                return Container(decoration: BoxDecoration(
                  color: Colors.white12,borderRadius: BorderRadius.circular(10),
                ),
                  width: double.infinity,
                  child: Image.asset(
                    image,
                    fit: BoxFit.cover,
                  ),
                );
              }),
        ),
        Container(
            child: AnimatedSmoothIndicator(
          activeIndex: activeindex,
          count: images.length,
          onDotClicked: (index) {
            activeindex;
          },
          effect: WormEffect(dotHeight: 8,dotWidth: 8),
        )),
      ],
    );
  }
}
