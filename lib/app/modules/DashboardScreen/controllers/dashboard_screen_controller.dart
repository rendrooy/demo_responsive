import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardScreenController extends GetxController {
  //TODO: Implement DashboardScreenController

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  String title = "Home Screen";

  final count = 0.obs;
  @override
  void onInit() {
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
