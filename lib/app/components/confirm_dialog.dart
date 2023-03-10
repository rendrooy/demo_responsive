import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

import '../config/constans.dart';
import 'defText.dart';
import 'primary_button.dart';

class ConfirmDialog extends StatelessWidget {
  final String title;
  final String? massage;
  final VoidCallback onConfrim;

  const ConfirmDialog({
    Key? key,
    required this.title,
    this.massage,
    required this.onConfrim,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 25,
          vertical: 20,
        ),
        decoration: BoxDecoration(
          color: kSecondaryColor,
          borderRadius: BorderRadius.circular(7),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            DefText(title).large,
            if (massage != null)
              Column(
                children: [
                  SizedBox(height: 10),
                  DefText(massage!, textAlign: TextAlign.center).normal,
                ],
              ),
            SizedBox(height: 25),
            Row(
              children: [
                Expanded(
                  child: PrimaryButton(
                    text: DefText("Confirm").normal,
                    //  "Confirm",
                    onPress: onConfrim,
                    // fontSize: 10,
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: PrimaryButton(
                      text: DefText("Confirm").normal,
                      // text: "Cancel",
                      // fontSize: 10,
                      onPress: () {
                        Get.back();
                      }),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
