import 'package:get/get.dart';

import '../../../util/connectivity_util.dart';

class UnknownScreenController extends GetxController {
  //TODO: Implement UnknownScreenController

  final count = 0.obs;
  @override
  void onInit() {
    checkConnectivity();
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
