import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/unknown_screen_controller.dart';

class UnknownScreenView extends GetView<UnknownScreenController> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      }, 
      child: Scaffold(
        // appBar: AppBar(
        //   title: Text('UnknownScreenView'),
        //   centerTitle: true,
        // ),
        body: Center(
          child: Text(
            'UnknownScreenView is working',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
