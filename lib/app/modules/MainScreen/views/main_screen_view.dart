import 'package:demo_responsive/app/components/side_menu.dart';
import 'package:demo_responsive/app/config/constans.dart';
import 'package:demo_responsive/app/util/custom_responsive.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../components/defText.dart';
import '../../../util/func_util.dart';
import '../controllers/main_screen_controller.dart';

class MainScreenView extends GetView<MainScreenController> {
  @override
  Widget build(BuildContext context) {
    return CustomResponsive(
      desktop: _tablet(),
      mobile: _mobile(),
      tablet: _tablet(),
    );
  }

  Widget _tablet() {
    return Scaffold(
      body: Row(
        children: [
          Obx(
            () => NavigationRail(
              backgroundColor: kSecondaryColor,
              extended: false,
              destinations: controller.itemBar
                  .map(
                    (item) => NavigationRailDestination(
                      icon: Icon(item['icon']),
                      selectedIcon: Icon(item['icon']),
                      label: DefText(item['name']).normal,
                    ),
                  )
                  .toList(),
              onDestinationSelected: (val) {
                if (val == controller.tabIndex) return;
                controller.navigate(val);
              },
              selectedIndex: controller.tabIndex.value,
            ),
          ),
          Expanded(
            child: TabBarView(
              physics: NeverScrollableScrollPhysics(),
              children: controller.myTabs,
              controller: controller.tabController,
            ),
          ),
        ],
      ),
    );
  }

  Widget _mobile() {
    return Scaffold(
      drawer: SideMenu(),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: kSecondaryColor,
        centerTitle: true,
        title: Obx(
          () => DefText(
            controller.itemBar[controller.tabIndex.value]['name'],
          ).large,
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications_none_rounded),
            onPressed: () {},
          ),
        ],
      ),
      body: TabBarView(
        physics: NeverScrollableScrollPhysics(),
        children: controller.myTabs,
        controller: controller.tabController,
      ),
    );
  }
}
