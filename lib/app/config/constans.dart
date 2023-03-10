import 'package:flutter/material.dart';

// const kPrimaryColor = Color(0xFFB7C4CF);
// const kSecondaryColor = Color(0xFFEEE3CB);
// const kBgColor = kPrimaryColor;
// const kAppBarColor = Color(0xFFD7C0AE);
// const kIconColor = Color(0xFF967E76);
// const kFontColor = Color(0xFF000000);

const kPrimaryColor = Color(0xFF005E6A);
const kSecondaryColor = Color(0xFF2A2D3E);
// const kAppBarColor = Color(0xFF424242);
const kBgColor = Color(0xFF212332);
const kAppBarColor = Color(0xFF424242);
const kInactiveColor = Color(0xFFa6a6a6);
const kFontColor = Color(0xFFfafafa);
const kBgWhite = Color(0xFFfafafa);
const kShimmerPrimaryColor = Color(0xFFdedede);
const kShimmerSeccondaryColor = Color(0xFFc4c4c4);

const kDefaultPadding = 16.0;

const String kUserData = "userData";
const String kTokenData = "tokenData";
const String kMemberId = "memberId";
const String kMemberData = "memberData";
const String logoApp = 'assets/logo/absensheet-logos_white.png';

TextStyle get kDefaultTextStyle {
  return TextStyle(
    color: kFontColor,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.normal,
  );
}

// LinearGradient kBgGradient = LinearGradient(
//   begin: Alignment.topCenter,
//   end: Alignment.center,
//   colors: [Colors.deepOrangeAccent, Colors.white],
// );

BoxDecoration kBgDecoration = BoxDecoration(
  gradient: LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.center,
    colors: [Colors.deepOrangeAccent, Colors.white],
  ),
);

EdgeInsets kPaddingHeader = EdgeInsets.only(
  top: kDefaultPadding,
  left: kDefaultPadding,
  right: kDefaultPadding,
);
EdgeInsets kPaddingBody = EdgeInsets.only(
  // top: kDefaultPadding,
  left: kDefaultPadding,
  right: kDefaultPadding,
);

BoxShadow kDefaultShadow = BoxShadow(
  color: Colors.black12,
  blurRadius: 6.0,
  offset: Offset(0, 2),
);

const kDefaultBorderRadius = BorderRadius.all(
  Radius.circular(7),
);
const kDefaultBorderRadius10 = BorderRadius.all(
  Radius.circular(10),
);

const kDefaultFastDuration = Duration(milliseconds: 250);
const kDefaultDuration = Duration(milliseconds: 500);
const kDefaultSPlashRadius = 20.0;

const kDefaultConstrant = BoxConstraints(maxWidth: 768);
const kDefaultConstrantB = BoxConstraints(maxWidth: 425);
