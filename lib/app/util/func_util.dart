import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';

import '../components/confirm_dialog.dart';
import '../config/constans.dart';

void logKey([key, content]) {
  String finalLog = '';
  dynamic tempContent = content ?? key;
  if (tempContent is Map) {
    finalLog = prettyJson(tempContent);
  } else if (tempContent is String) {
    finalLog = tempContent;
  } else {
    finalLog = tempContent.toString();
  }

  if (content != null) {
    log('$key => $finalLog');
  } else {
    log(finalLog);
  }
}

dialogLoading() {
  showDialog(
    context: Get.overlayContext!,
    barrierDismissible: false,
    builder: (_) => WillPopScope(
      onWillPop: () async => false,
      child: loading(),
    ),
  );

  // Get.dialog(
  //   name: "loading",
  //   WillPopScope(
  //     onWillPop: () async {
  //       return false;
  //     },
  //     child: loading(),
  //   ),
  //   barrierDismissible: false,
  // );
}

String prettyJson(dynamic json) {
  var spaces = ' ' * 4;
  var encoder = JsonEncoder.withIndent(spaces);
  return encoder.convert(json);
}

String? passwordStrength(String? value) {
  String missings = "";
  if (value!.length < 8) {
    missings += "Password has at least 8 characters\n";
  }
  if (!RegExp("(?=.*[a-z])").hasMatch(value)) {
    missings += "Password must contain at least one lowercase letter\n";
  }
  if (!RegExp("(?=.*[A-Z])").hasMatch(value)) {
    missings += "Password must contain at least one uppercase letter\n";
  }
  if (!RegExp((r'\d')).hasMatch(value)) {
    missings += "Password must contain at least one digit\n";
  }
  if (!RegExp((r'\W')).hasMatch(value)) {
    missings += "Password must contain at least one symbol\n";
  }

  if (missings != "") {
    return missings;
  }

  return null;
}

void catchError({nameFunc, msg}) {
  logKey('$nameFunc error', msg);
  showSnackbar(pesan: msg, color: Colors.red);
}

String dateFormater(
  dynamic date, {
  String dateFormat = "EEEE, dd MMMM - HH:mm",
}) {
  if (date is String) {
    return DateFormat(dateFormat).format(DateTime.parse(date));
  }
  if (date is DateTime) {
    return DateFormat(dateFormat).format(date);
  }
  return '';
}

String currencyFormat(dynamic number) {
  String res = "-";
  if (number is String) {
    res = "Rp " + NumberFormat("#,###", "ID").format(double.parse(number));
  }
  if (number is double || number is int) {
    res = "Rp " + NumberFormat("#,###", "ID").format(number);
  }
  return res;
}

void showSnackbar({
  String? tittle,
  required String pesan,
  Color? color,
}) {
  if (pesan == "{null}")
    return;
  else
    Get.showSnackbar(
      GetSnackBar(
        title: tittle,
        message: pesan,
        isDismissible: true,
        snackPosition: SnackPosition.BOTTOM,
        animationDuration: kDefaultDuration,
        duration: Duration(seconds: 2),
        forwardAnimationCurve: Curves.easeInOutCirc,
        reverseAnimationCurve: Curves.easeOutCirc,
        maxWidth: 425,
        borderRadius: 10,
        margin: EdgeInsets.all(kDefaultPadding),
        backgroundColor: color ?? kPrimaryColor,
      ),
    );
}

void DialogConnection({String? messages}) {
  Get.dialog(
    ConfirmDialog(
      onConfrim: () {},
      title: "Koneksi Terputus",
    ),
    barrierDismissible: false,
  );
}

DeviceType deviceTypeFunc(double width) {
  late DeviceType resDeviceType;

  if (width < 600) resDeviceType = DeviceType.mobile;
  if (width > 600 && width < 900) resDeviceType = DeviceType.tablet;
  if (width > 900) resDeviceType = DeviceType.tablet;
  return resDeviceType;
}

Widget loading({double? size}) {
  return SpinKitSpinningLines(
    color: kBgWhite,
    size: size ?? 50,
  );
}

Widget borderTop() {
  return Align(
    alignment: Alignment.center,
    child: Container(
      height: 5,
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: kBgWhite,
      ),
    ),
  );
}

// dialogLoading() {
//   Get.dialog(
//     loading(),
//     barrierDismissible: false,
//   );
// }
