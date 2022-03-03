import 'package:animation/app/modules/home/views/a_align.dart';
import 'package:animation/app/modules/home/views/a_avatarGlow.dart';
import 'package:animation/app/modules/home/views/a_caraousel.dart';
import 'package:animation/app/modules/home/views/a_container.dart';
import 'package:animation/app/modules/home/views/a_decoration.dart';
import 'package:animation/app/modules/home/views/a_position.dart';
import 'package:get/get.dart';

import 'package:animation/app/modules/home/bindings/home_binding.dart';
import 'package:animation/app/modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => AnimasiCaraousel(),
      binding: HomeBinding(),
    ),
  ];
}
