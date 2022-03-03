// import 'package:flutter/material.dart';

// import 'package:get/get.dart';

// import '../controllers/home_controller.dart';

// class AnimasiPotioned extends GetView<HomeController> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text('Animasi Potioned'),
//           centerTitle: true,
//         ),
//         body: Center(
//           child: GestureDetector(
//             onTap: () {
//               controller.selected.toggle();
//             },
//             child: Container(
//               color: Colors.purple,
//               width: 250,
//               height: 500,
//               child: Stack(
//                 children: [
//                   Obx(() => AnimatedPositioned(
//                         duration: Duration(seconds: 1),
//                         top: 0,
//                         right: controller.selected.isFalse ? 0 : 200,
//                         child: Container(
//                           width: 50,
//                           height: 50,
//                           color: Colors.amber,
//                         ),
//                       )),
//                 ],
//               ),
//             ),
//           ),
//         ));
//   }
// }
