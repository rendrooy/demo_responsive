import 'package:cached_network_image/cached_network_image.dart';
import 'package:custom_popup_menu/custom_popup_menu.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'package:sizer/sizer.dart';

import '../../../components/default_appBar.dart';
import '../../../config/constans.dart';
import '../../../util/custom_responsive.dart';
import '../../../components/defText.dart';
import '../../../util/func_util.dart';
import '../controllers/home_screen_controller.dart';

class HomeScreenView extends GetView<HomeScreenController> {
  @override
  Widget build(BuildContext context) {
    return GetX<HomeScreenController>(
        init: HomeScreenController(),
        builder: (context) {
          return CustomResponsive(
            desktop: _tablet(),
            mobile: _mobile(),
            tablet: _tablet(),
          );
        });
  }

  Widget _tablet() {
    return Scaffold(
      appBar: DeviceType.mobile != deviceTypeFunc(Get.width)
          ? PreferredSize(
              child: DefaultAppbar(
                title: controller.title.value,
                isDashboard: true,
                actions: [
                  IconButton(
                    splashRadius: 20,
                    onPressed: () {},
                    icon: Icon(
                      Icons.notifications_none_rounded,
                    ),
                  ),
                ],
              ),
              preferredSize: Size.fromHeight(56),
            )
          : null,
    );
  }

  Widget _mobile() {
    return Scaffold(
      body: Center(
        child: DefText(controller.title.value).normal,
      ),
    );
  }
}

class Tile extends StatelessWidget {
  const Tile({
    Key? key,
    required this.index,
    this.extent,
    this.backgroundColor,
    this.bottomSpace,
  }) : super(key: key);

  final int index;
  final double? extent;
  final double? bottomSpace;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    final child = Container(
      color: backgroundColor ?? Colors.red,
      height: extent,
      child: Center(
        child: CircleAvatar(
          minRadius: 20,
          maxRadius: 20,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          child: Text('$index', style: const TextStyle(fontSize: 20)),
        ),
      ),
    );

    if (bottomSpace == null) {
      return child;
    }

    return Column(
      children: [
        Expanded(child: child),
        Container(
          height: bottomSpace,
          color: Colors.green,
        )
      ],
    );
  }
}
