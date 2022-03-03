// import 'package:flutter/material.dart';

// import 'package:get/get.dart';

// import '../controllers/home_controller.dart';

// class AnimasiAlign extends GetView<HomeController> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Animasi Align'),
//         centerTitle: true,
//       ),
//       body: Center(
//           child: GestureDetector(
//           onTap: () {
//             controller.selected.toggle();
//           },
//           child: Obx(() => AnimatedCrossFade(
//                 firstChild: Container(
//                   color: Colors.green,
//                   width: 200,
//                   height: 250,
//                 ),
//                 secondChild: FlutterLogo(
//                   size: 250,
//                 ),
//                 crossFadeState: controller.selected.isFalse ? CrossFadeState.showFirst : CrossFadeState.showSecond,
//                 duration: Duration(seconds: 2),
//               )),
//         ),
//       ),
//     );
//   }
// }
