import 'package:flutter/material.dart';

import 'font_manager.dart';

TextStyle _getTextStyle(double fontSize, String fontFamily, Color color, FontWeight fontWeight) {
  return TextStyle(
    fontSize: fontSize,
    fontFamily: fontFamily,
    color: color,
    fontWeight: fontWeight,
  );
}
// reular style

TextStyle getRegularStyle({double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(
    fontSize,
    FontConstants.fontFamily,
    color,
    FontWeightManger.regular,
  );
}
//light text style

TextStyle getLightStyle({double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(
    fontSize,
    FontConstants.fontFamily,
    color,
    FontWeightManger.light,
  );
}
// bold text style

TextStyle getBoldStyle({double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(
    fontSize,
    FontConstants.fontFamily,
    color,
    FontWeightManger.bold,
  );
}
//semiBold Text style

TextStyle getsemiBoldStyle({double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(
    fontSize,
    FontConstants.fontFamily,
    color,
    FontWeightManger.semiBold,
  );
}
// medium text Style

TextStyle getMediumStyle({double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(
    fontSize,
    FontConstants.fontFamily,
    color,
    FontWeightManger.medium,
  );
}
