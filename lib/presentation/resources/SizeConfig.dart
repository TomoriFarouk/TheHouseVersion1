import 'package:flutter/material.dart';

// class SizeConfig {
//   void init(BuildContext context) {
//     MediaQueryData _mediaQueryData = MediaQuery.of(context);
//     double screenWidth = _mediaQueryData.size.width;
//     double screenHeight = _mediaQueryData.size.height;
//     double blockSizeHorizontal = screenWidth / 100;
//     double doubleblockSizeVertical = screenHeight / 100;
//     double _safeAreaHorizontal = _mediaQueryData.padding.left + _mediaQueryData.padding.right;
//     double _safeAreaVertical = _mediaQueryData.padding.top + _mediaQueryData.padding.bottom;
//     double safeBlockHorizontal = (screenWidth - _safeAreaHorizontal) / 100;
//     double safeBlockVertical = (screenHeight - _safeAreaVertical) / 100;
//   }
// }
// Get the proportionate height as per screen size
double getProportionateScreenHeight(double inputHeight, double HEIGHT) {
  // 812 is the layout height that designer use
  return (inputHeight / 896.0) * HEIGHT;
}

// Get the proportionate height as per screen size
double getProportionateScreenWidth(double inputWidth, double WIDTH) {
  // 375 is the layout width that designer use
  return (inputWidth / 414.0) * WIDTH;
}

final RegExp emailValidatorRegExp = RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Please Enter your email";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kPassNullError = "Please Enter your password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords don't match";
const String kNamelNullError = "Please Enter your name";
const String kPhoneNumberNullError = "Please Enter your phone number";
const String kAddressNullError = "Please Enter your address";
