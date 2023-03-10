import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../components/defText.dart';
import '../controllers/profile_screen_controller.dart';

class ProfileScreenView extends GetView<ProfileScreenController> {
  @override
  Widget build(BuildContext context) {
    return GetX<ProfileScreenController>(
        init: ProfileScreenController(),
        builder: (controller) {
          return Scaffold(
            body: Center(
              child: DefText(controller.title.value).normal,
            ),
          );
        });
  }
}
