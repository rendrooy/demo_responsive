import 'package:demo_responsive/app/modules/MapsScreen/views/maps_screen_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../util/func_util.dart';
import '../../HomeScreen/views/home_screen_view.dart';
import '../../ProfileScreen/views/profile_screen_view.dart';

class MainScreenController extends GetxController
    with GetTickerProviderStateMixin {
  //TODO: Implement MainScreenController

  final count = 0.obs;
  String title = "MainScreen";

  late TabController tabController;
  var tabIndex = 0.obs;
  var isExtended = true.obs;
  var myTabs = [
    Tab(child: HomeScreenView()),
    Tab(child: ProfileScreenView()),
    Tab(child: MapsScreenView()),
  ].obs;

  List itemBar = [
    {
      "name": "Home",
      "icon": Icons.dashboard_rounded,
    },
    {
      "name": "Profile",
      "icon": Icons.person,
    },
    {
      "name": "Maps",
      "icon": Icons.map_outlined,
    }
  ];

  void navigate(index) {
    tabIndex.value = index;
    tabController.animateTo(
      index,
      curve: Curves.linear,
    );
    Get.back();
    update();
  }

  @override
  void onInit() {
    tabController = TabController(
      length: myTabs.length,
      vsync: this,
      initialIndex: 0,
    );
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
