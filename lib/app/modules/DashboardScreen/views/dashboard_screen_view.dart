import 'package:demo_responsive/app/components/defText.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../components/side_menu.dart';
import '../../../util/custom_responsive.dart';
import '../controllers/dashboard_screen_controller.dart';

class DashboardScreenView extends GetView<DashboardScreenController> {
  @override
  Widget build(BuildContext context) {
    return CustomResponsive(
      desktop: _mobile(),
      mobile: _mobile(),
      tablet: _tablet(),
    );
  }

  Widget _tablet() {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          title: DefText(controller.title,
                  fontWeight: FontWeight.bold, color: Colors.white)
              .large,
          centerTitle: true,
          actions: [
            IconButton(
              icon: Icon(Icons.notifications_none_rounded),
              onPressed: () {},
            ),
          ],
        ),
        body: Row(
          children: [
            NavigationRail(
              selectedIndex: 1,
              destinations: [
                NavigationRailDestination(
                  icon: Icon(Icons.dashboard_rounded),
                  selectedIcon: Icon(Icons.dashboard_rounded),
                  label: Text(
                    "Dashboard",
                  ),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.dashboard_rounded),
                  selectedIcon: Icon(Icons.dashboard_rounded),
                  label: Text(
                    "ASDSAD",
                  ),
                ),
              ],
            ),
          ],
        ));
  }

  Widget _mobile() {
    return Scaffold(
      appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          title: DefText(controller.title,
                  fontWeight: FontWeight.bold, color: Colors.white)
              .large,
          centerTitle: true,
          actions: [
            IconButton(
              icon: Icon(Icons.notifications_none_rounded),
              onPressed: () {},
            ),
          ]),
      key: controller.scaffoldKey,
      body: Center(
        child: DefText("HomeScreen").normal,
      ),
    );
  }
}
