import 'package:demo_responsive/app/components/defText.dart';
import 'package:demo_responsive/app/components/input_builder.dart';
import 'package:demo_responsive/app/components/primary_button.dart';
import 'package:demo_responsive/app/components/secondary_button.dart';
import 'package:demo_responsive/app/config/constans.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import 'package:get/get.dart';

import '../../../util/custom_responsive.dart';
import '../components/form_login.dart';
import '../components/logo.dart';
import '../controllers/login_screen_controller.dart';

class LoginScreenView extends GetView<LoginScreenController> {
  @override
  Widget build(BuildContext context) {
    return CustomResponsive(
      desktop: _desktop(),
      tablet: _tablet(),
      mobile: _mobile(),
    );
  }

  Widget _desktop() {
    return Scaffold(
      // backgroundColor: Colors.transparent,
      body: Center(
        child: Container(
          // padding: EdgeInsets.all(32.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  color: kSecondaryColor,
                  height: double.infinity,
                  alignment: Alignment.center,
                  child: Logo(),
                ),
              ),
              // SizedBox(width: kDefaultPadding),
              Expanded(
                  child: Container(
                // constraints: BoxConstraints(maxWidth: 600 ),
                padding: EdgeInsets.all(kDefaultPadding * 5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // DefText("Sign in").extraLarge,
                    // SizedBox(height: kDefaultPadding),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: SecondaryButton(
                            text: DefText("Sign in with Google").normal,
                            icon: Icons.email_outlined,
                            onPress: () {},
                          ),
                        ),
                        SizedBox(width: kDefaultPadding),
                        Expanded(
                          child: SecondaryButton(
                            text: DefText("Sign in with Facebook").normal,
                            icon: Icons.facebook_sharp,
                            onPress: () {},
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: kDefaultPadding),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Divider(
                          thickness: 1,
                          color: Colors.white,
                        ),
                        DefText("Or with Email").semiSmall,
                        Divider(
                          thickness: 1,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    SizedBox(height: kDefaultPadding),
                    FormLogin(),
                  ],
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }

  Widget _tablet() {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(32.0),
          constraints: BoxConstraints(maxWidth: 500),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Logo(),
                SizedBox(height: kDefaultPadding),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: SecondaryButton(
                        text: DefText("Sign in with Google").normal,
                        icon: Icons.email_outlined,
                        onPress: () {},
                      ),
                    ),
                    SizedBox(width: kDefaultPadding),
                    Expanded(
                      child: SecondaryButton(
                        text: DefText("Sign in with Facebook").normal,
                        icon: Icons.facebook_sharp,
                        onPress: () {},
                      ),
                    ),
                  ],
                ),
                SizedBox(height: kDefaultPadding),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Divider(
                      thickness: 1,
                      color: Colors.white,
                    ),
                    DefText("Or with Email").semiSmall,
                    Divider(
                      thickness: 1,
                      color: Colors.white,
                    ),
                  ],
                ),
                SizedBox(height: kDefaultPadding),
                FormLogin(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _mobile() {
    return Scaffold(
        body: Center(
      child: Container(
        constraints: const BoxConstraints(maxWidth: 300),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Logo(),
              SizedBox(height: kDefaultPadding),
              SecondaryButton(
                text: DefText("Sign in with Google").normal,
                icon: Icons.email_outlined,
                onPress: () {},
              ),
              SizedBox(height: kDefaultPadding),
              SecondaryButton(
                text: DefText("Sign in with Facebook").normal,
                icon: Icons.facebook_sharp,
                onPress: () {},
              ),
              SizedBox(height: kDefaultPadding),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Divider(
                    thickness: 1,
                    color: Colors.white,
                  ),
                  DefText("Or with Email").semiSmall,
                  Divider(
                    thickness: 1,
                    color: Colors.white,
                  ),
                ],
              ),
              SizedBox(height: kDefaultPadding),
              FormLogin()
            ],
          ),
        ),
      ),
    ));
  }
}
