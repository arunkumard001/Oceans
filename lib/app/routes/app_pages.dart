import 'package:get/get.dart';

import 'package:oceans/app/modules/Login/bindings/login_binding.dart';
import 'package:oceans/app/modules/Login/views/login_view.dart';
import 'package:oceans/app/modules/home/bindings/home_binding.dart';
import 'package:oceans/app/modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
  ];
}
