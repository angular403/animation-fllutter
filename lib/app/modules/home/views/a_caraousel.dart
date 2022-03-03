import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../controllers/home_controller.dart';

class AnimasiCaraousel extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Animasi Carouslider'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                  onPageChanged: (index, reason) =>
                      controller.index.value = index,
                  height: 200.0,
                  autoPlay: true,
                  autoPlayAnimationDuration: Duration(seconds: 1)),
              items: [1, 2, 3, 4, 5].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      child: Image.network(
                        "https://picsum.photos/id/${5 + i}/536/354",
                        fit: BoxFit.cover,
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            Obx(() => Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [1, 2, 3, 4, 5].asMap().entries.map((entry) {
                    return GestureDetector(
                      onTap: () =>
                          CarouselController().animateToPage(entry.key),
                      child: Container(
                        width: 12.0,
                        height: 12.0,
                        margin: EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 4.0),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: (Theme.of(context).brightness ==
                                        Brightness.dark
                                    ? Colors.white
                                    : Colors.black)
                                .withOpacity(
                                    controller.index == entry.key ? 0.9 : 0.4)),
                      ),
                    );
                  }).toList(),
                )),
          ],
        ));
  }
}
