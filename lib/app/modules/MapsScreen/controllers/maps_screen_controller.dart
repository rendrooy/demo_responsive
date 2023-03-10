import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapsScreenController extends GetxController {
  //TODO: Implement MapsScreenController

  LatLng center = LatLng(32.91081899999999, -92.734876);
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
