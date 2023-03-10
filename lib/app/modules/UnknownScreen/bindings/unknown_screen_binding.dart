import 'package:get/get.dart';

import '../controllers/unknown_screen_controller.dart';

class UnknownScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UnknownScreenController>(
      () => UnknownScreenController(),
    );
  }
}
