import 'package:get/get.dart';
import 'package:mod_1/presentation/pages/home.dart';
import 'package:mod_1/presentation/pages/login.dart';
import 'package:mod_1/presentation/pages/profile.dart';
import 'package:mod_1/presentation/pages/signup.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => Home(),
      binding: HomeBinding(),
    ),
    GetPage(name: Routes.LOGIN, page: () => Login()),
    GetPage(name: Routes.SIGNUP, page: () => Signup()),
    GetPage(name: Routes.PROFILE, page: () => ProfileScreen())
  ];
}
