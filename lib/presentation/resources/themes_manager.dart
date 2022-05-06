import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'ConstantData.dart';
import 'font_manager.dart';
import 'styles_manger.dart';
import 'values_manager.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    //colors of the app
    scaffoldBackgroundColor: ColorManager.appbarwithBodyColor,
    primaryColor: ColorManager.primaryColor,
    disabledColor: ColorManager.disableColor,
    //  splashColor: ColorManager.primaryOpacity70,

    /// used for diasble color button
    accentColor: ColorManager.accentColor,

    //card view theme
    // cardTheme: CardTheme(
    //   color: ColorManager.white,
    //   shadowColor: ColorManager.grey,
    //   elevation: AppSize.s4,
    // ),

    //App bar theme
    appBarTheme: AppBarTheme(
      centerTitle: true,
      color: ColorManager.appbarwithBodyColor,
      elevation: AppSize.s4,
      // shadowColor: ColorManager.primaryOpacity70,
      titleTextStyle: getRegularStyle(
        color: ColorManager.primaryColor,
        fontSize: FontSize.s16,
      ),
    ),

    //Button theme

    buttonTheme: ButtonThemeData(
      shape: StadiumBorder(),
      disabledColor: ColorManager.disableColor,
      buttonColor: ColorManager.primaryColor,
      //  splashColor: ColorManager.primaryOpacity70,
    ),

    //Elevated button

    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            textStyle: getRegularStyle(color: ColorManager.whiteColor, fontSize: FontSize.s14),
            primary: ColorManager.primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ))),

    //text theme

    textTheme: TextTheme(
      headline1: getMediumStyle(
        color: ColorManager.primaryColor,
        fontSize: FontSize.s20,
      ),
      headline2: getMediumStyle(
        color: ColorManager.primaryColor,
        fontSize: FontSize.s24,
      ),
      subtitle1: getLightStyle(
        color: ColorManager.subtextColor,
        fontSize: FontSize.s14,
      ),
      subtitle2: getsemiBoldStyle(
        color: ColorManager.primaryColor,
        fontSize: FontSize.s14,
      ),
      // caption: getRegularStyle(
      //   color: ColorManager.grey1,
      // ),
      bodyText1: getRegularStyle(
        color: ColorManager.bodyTextColor,
        fontSize: FontSize.s16,
      ),
    ),

    //input decoration theme (text form field)
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: EdgeInsets.all(30),
      hintStyle: getRegularStyle(color: ColorManager.bodyTextColor),
      labelStyle: getMediumStyle(color: ColorManager.bodyTextColor, fontSize: 14.sp),
      errorStyle: getRegularStyle(color: ColorManager.error),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.borderColor, width: AppSize.s1_5),
        borderRadius: BorderRadius.all(Radius.circular(AppSize.s12)),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.goldColor, width: AppSize.s1_5),
        borderRadius: BorderRadius.all(Radius.circular(AppSize.s12)),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.error, width: AppSize.s1_5),
        borderRadius: BorderRadius.all(Radius.circular(AppSize.s12)),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.primaryColor, width: AppSize.s1_5),
        borderRadius: BorderRadius.all(Radius.circular(AppSize.s12)),
      ),
    ),
  );
}
