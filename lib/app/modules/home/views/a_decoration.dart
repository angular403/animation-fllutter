import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class AnimasiDecoration extends GetView<HomeController> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animasi Decoration'),
        centerTitle: true,
      ),
      body: Center(
          child: FadeTransition(
            opacity: CurvedAnimation(parent: controller.animationController, curve: Curves.easeIn),
        // decoration: myDecoration.animate(controller.animationController),
        child: Container(
          width: 200,
          height: 200,
          color: Colors.purple,
        ),
      )),
    );
  }
}
