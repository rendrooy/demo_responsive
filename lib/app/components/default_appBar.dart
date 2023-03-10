// // import 'package:cashflow/app/config/constans.dart';
// import 'package:cashflow_v2/app/components/defText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../config/constans.dart';
import 'defText.dart';

class DefaultAppbar extends StatelessWidget {
  final String title;
  final bool isDashboard;
  final VoidCallback? onPressed;
  final List<Widget>? actions;
  final Widget? leadingWidget;
  const DefaultAppbar({
    Key? key,
    required this.title,
    this.isDashboard = false,
    this.leadingWidget,
    this.onPressed,
    this.actions,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: kSecondaryColor,
      centerTitle: true,
      elevation: 0.0,
      title: DefText(
        title,
        fontWeight: FontWeight.w500,
        color: Colors.white,
      ).large,
      leading:
          // leadingWidget ??
          // leading:
          isDashboard
              ? Container()
              : IconButton(
                  splashRadius: 20,
                  icon: Icon(
                    Icons.arrow_back_ios_new_rounded,
                    size: 22,
                  ),
                  onPressed: onPressed ??
                      () {
                        Get.back();
                      },
                ),
      actions: actions ?? [],
    );
  }
}
