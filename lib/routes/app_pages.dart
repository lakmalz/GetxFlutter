import 'package:get/get.dart';
import 'package:getxflutter/home/home_binding.dart';
import 'package:getxflutter/home/home_screen.dart';
import 'package:getxflutter/welcome/welcome_binding.dart';

import 'app_routes.dart';
import 'package:getxflutter/welcome/welcome_screen.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.WELCOME;

  static final routes = [
    GetPage(
      name: Routes.WELCOME,
      page: () => const WelcomeScreen(),
      binding: WelcomeBinding(),
    ),
    GetPage(
      name: Routes.HOME,
      page: () => const HomeScreen(),
      binding: HomeBinding(),
    ),
  ];
}
