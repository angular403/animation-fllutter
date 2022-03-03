import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../controllers/home_controller.dart';

class AnimasiAvatar extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animasi Lottie'),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          child: Lottie.network(
              "https://assets1.lottiefiles.com/packages/lf20_vwCDpL.json",fit: BoxFit.contain),
        ),
      ),
    );
  }
}
