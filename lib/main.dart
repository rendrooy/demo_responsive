import 'package:flutter/material.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app/config/constans.dart';
import 'app/routes/app_pages.dart';

void main() {
  runApp(
    myApp(),
  );
}

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      localizationsDelegates: [
        FormBuilderLocalizations.delegate,
      ],
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kBgColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.white),
        canvasColor: kSecondaryColor,
        // inputDecorationTheme: themeInput,
      ),
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      // ),
    );
  }
}
