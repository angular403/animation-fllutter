// import 'package:flutter/material.dart';

// import 'package:get/get.dart';

// import '../controllers/home_controller.dart';

// class AnimasiContainer extends GetView<HomeController> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Animated Container'),
//         centerTitle: true,
//       ),
//       body: Center(
//         child: GestureDetector(
//           onTap: () {
//             controller.selected.toggle();
//           },
//           child: Obx(
//             () => AnimatedContainer(
//               curve: Curves.slowMiddle,
//               duration: Duration(seconds: 2),
//               width: controller.selected.isFalse ? 200 : 350,
//               height: controller.selected.isFalse ? 200 : 350,
//               color: controller.selected.isFalse ? Colors.red : Colors.green,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
