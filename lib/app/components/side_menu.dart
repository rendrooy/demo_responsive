// import 'package:demo_responsive/app/modules/MainScreen/controllers/main_screen_controller.dart';
import 'package:demo_responsive/app/modules/loginScreen/components/logo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../config/constans.dart';
import '../modules/MainScreen/controllers/main_screen_controller.dart';
import 'defText.dart';

class SideMenu extends GetView<MainScreenController> {
  final Map? dataUser;
  final String? version;
  // final Function(Map) onPress;

  const SideMenu({
    Key? key,
    // required this.onPress,
    this.dataUser,
    this.version,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      // backgroundColor: kAppBarColor,
      child: Column(
        children: [
          DrawerHeader(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FlutterLogo(size: 36),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DefText("Narendra Nur Winahyu").normal,
                  DefText("Narendra Nur Winahyu").normal,
                ],
              )
            ],
          )
              // Container(
              //   child: Column(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     children: [
              //       Row(
              //         mainAxisAlignment: MainAxisAlignment.center,
              //         children: [
              //           Icon(Icons.person, ),
              //           SizedBox(width: kDefaultPadding),
              //           DefText("Narendra Nur Winahyu").normal,
              //         ],
              //       ),
              //       SizedBox(height: kDefaultPadding),
              //     ],
              //   ),
              // ),
              ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ...List.generate(
                    controller.itemBar.length,
                    (index) => DrawerListTile(
                      title: controller.itemBar[index]['name'],
                      icon: controller.itemBar[index]['icon'],
                      press: () {
                        controller.navigate(index);
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(kDefaultPadding / 2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    DefText("Copyright ").extraSmall,
                    Icon(Icons.copyright, size: 12),
                    DefText(" PT Bank Negara Indonesia").extraSmall,
                  ],
                ),
                DefText("V. $version").extraSmall
              ],
            ),
          )
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    required this.title,
    this.svgSrc,
    this.icon,
    required this.press,
  }) : super(key: key);

  final String title;
  final IconData? icon;
  final String? svgSrc;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        onTap: press,
        leading: svgSrc != null
            ? ImageIcon(
                AssetImage(svgSrc!),
              )
            : icon != null
                ? Icon(icon)
                : Icon(Icons.accessibility_outlined),
        title: DefText(title).normal);
  }
}
