import 'package:demo_responsive/app/util/func_util.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../util/connectivity_util.dart';

class ProfileScreenController extends GetxController {
  //TODO: Implement ProfileScreenController

  final count = 0.obs;
  var title = "ProfileScreenView".obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    dialogLoading();
    Future.delayed(Duration(seconds: 2), () async {
      // do something here
      checkConnectivity();
      Navigator.of(Get.overlayContext!).pop();
      // Get.

      // await Future.delayed(Duration(seconds: 1));
      // do stuff
    });
    // Future.delayed((Duration(seconds: 3)),
    // =>
    // );
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
