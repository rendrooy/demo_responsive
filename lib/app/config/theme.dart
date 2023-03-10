// import 'package:delabel_net/app/config/constants.dart';
import 'package:flutter/material.dart';

final themeInput = InputDecorationTheme(
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(4)),
    // borderSide: BorderSide(width: 1),
  ),

  disabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(4)),
    borderSide: BorderSide(width: 1),
  ),
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(4)),
    borderSide: BorderSide(width: 1),
  ),
  border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(4)),
      borderSide: BorderSide(width: 1)),
  errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(4)),
      borderSide: BorderSide(width: 1, color: Colors.red)),
  focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(4)),
      borderSide: BorderSide(width: 1, color: Colors.red)),

  hintStyle: TextStyle(fontSize: 16, color: Colors.black),
  labelStyle: TextStyle(fontSize: 16, color: Colors.black),
  prefixStyle: TextStyle(color: Colors.black, fontSize: 14),

  // errorText: snapshot.error,
);
