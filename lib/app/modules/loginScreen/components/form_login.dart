// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';

import 'package:demo_responsive/app/modules/loginScreen/controllers/login_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';

import '../../../components/defText.dart';
import '../../../components/input_builder.dart';
import '../../../components/primary_button.dart';
import '../../../config/constans.dart';

class FormLogin extends GetView<LoginScreenController> {
  const FormLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FormBuilder(
      child: Column(
        children: [
          InputBuilderText(
            name: "email",
            label: "Email",
            initialValue: "Narendra@gmail.com",
          ),
          SizedBox(height: kDefaultPadding),
          InputBuilderText(
            name: "password",
            label: "Password",
            initialValue: "1123456788",
          ),
          SizedBox(height: kDefaultPadding),
          Align(
            alignment: Alignment.centerRight,
            child: DefText(
              "Forgot Password",
              fontWeight: FontWeight.w600,
              textAlign: TextAlign.right,
            ).normal,
          ),
          SizedBox(height: kDefaultPadding),
          PrimaryButton(
            text: DefText("Sign in").normal,
            onPress: () {
              controller.login();
            },
          )
        ],
      ),
    );
  }
}
