import 'package:get/get.dart';

import '../modules/DashboardScreen/bindings/dashboard_screen_binding.dart';
import '../modules/DashboardScreen/views/dashboard_screen_view.dart';
import '../modules/HomeScreen/bindings/home_screen_binding.dart';
import '../modules/HomeScreen/views/home_screen_view.dart';
import '../modules/MainScreen/bindings/main_screen_binding.dart';
import '../modules/MainScreen/views/main_screen_view.dart';
import '../modules/MapsScreen/bindings/maps_screen_binding.dart';
import '../modules/MapsScreen/views/maps_screen_view.dart';
import '../modules/ProfileScreen/bindings/profile_screen_binding.dart';
import '../modules/ProfileScreen/views/profile_screen_view.dart';
import '../modules/UnknownScreen/bindings/unknown_screen_binding.dart';
import '../modules/UnknownScreen/views/unknown_screen_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/loginScreen/bindings/login_screen_binding.dart';
import '../modules/loginScreen/views/login_screen_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.LOGIN_SCREEN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN_SCREEN,
      page: () => LoginScreenView(),
      binding: LoginScreenBinding(),
    ),
    GetPage(
      name: _Paths.DASHBOARD_SCREEN,
      page: () => DashboardScreenView(),
      binding: DashboardScreenBinding(),
    ),
    GetPage(
      name: _Paths.MAIN_SCREEN,
      page: () => MainScreenView(),
      binding: MainScreenBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE_SCREEN,
      page: () => ProfileScreenView(),
      binding: ProfileScreenBinding(),
    ),
    GetPage(
      name: _Paths.HOME_SCREEN,
      page: () => HomeScreenView(),
      binding: HomeScreenBinding(),
    ),
    GetPage(
      name: _Paths.UNKNOWN_SCREEN,
      page: () => UnknownScreenView(),
      binding: UnknownScreenBinding(),
    ),
    GetPage(
      name: _Paths.MAPS_SCREEN,
      page: () => MapsScreenView(),
      binding: MapsScreenBinding(),
    ),
  ];
}
