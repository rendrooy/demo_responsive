import 'package:demo_responsive/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../util/connectivity_util.dart';
import '../../../util/func_util.dart';

class LoginScreenController extends GetxController {
  final count = 0.obs;
  String title = "Welocome to Flutter!";

  @override
  void onInit() {
    super.onInit();
  }

  void login() async {
    Get.offNamed(Routes.MAIN_SCREEN);
  }

  @override
  void onReady() {
    dialogLoading();
    Future.delayed(Duration(seconds: 2), () async {
      checkConnectivity();
      Navigator.of(Get.overlayContext!).pop();
    });
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
