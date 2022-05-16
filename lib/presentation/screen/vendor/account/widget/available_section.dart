import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_ui/presentation/widget/widget.dart';
import 'package:furniture_ui/presentation/resources/resource.dart';

class Available extends StatelessWidget {
  const Available({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 25.h,
            bottom: 16.h,
          ),
          child: TitleText(text: 'Withdraw', Size: 16.sp),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, Routes.loginRoute);
          },
          style: ElevatedButton.styleFrom(
            primary: Color(0x1AD5B65B),
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            side: BorderSide(
              width: 2.0,
              color: ColorManager.goldColor,
            ),
            minimumSize: Size(366.w, 56.h), //////// HERE
          ),
          child: Padding(
            padding: EdgeInsets.only(left: 113.w),
            child: Row(
              children: [
                SvgPicture.asset(
                  'assets/icons/bankTransfer.svg',
                  height: 20.h,
                  width: 20.w,
                  color: ColorManager.goldColor,
                ),
                SizedBox(width: 18.w),
                Text(
                  'Bank Transfer',
                  style: Theme.of(context).textTheme.bodyText2!.copyWith(color: ColorManager.goldColor),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 16.h),
        ElevatedButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, Routes.loginRoute);
          },
          style: ElevatedButton.styleFrom(
            primary: ColorManager.dividerColor,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),

            minimumSize: Size(366.w, 56.h), //////// HERE
          ),
          child: Padding(
            padding: EdgeInsets.only(left: 133.w),
            child: Row(
              children: [
                SvgPicture.asset(
                  'assets/icons/Paypal.svg',
                  height: 20.h,
                  width: 20.w,
                  //color: ColorManager.goldColor,
                ),
                SizedBox(width: 18.w),
                Text(
                  'Paypal',
                  style: Theme.of(context).textTheme.bodyText2!.copyWith(color: ColorManager.primaryColor),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 16.h),
        ElevatedButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, Routes.loginRoute);
          },
          style: ElevatedButton.styleFrom(
            primary: ColorManager.dividerColor,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),

            minimumSize: Size(366.w, 56.h), //////// HERE
          ),
          child: Padding(
            padding: EdgeInsets.only(left: 146.w),
            child: Row(
              children: [
                SizedBox(width: 18.w),
                Text(
                  'Payooner',
                  style: Theme.of(context).textTheme.bodyText2!.copyWith(color: ColorManager.primaryColor),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 44.h),
        SectionTitle(
          text1: 'Recent transactions',
          text2: 'See all',
        ),
        table(),
        table(),
        table(),
      ],
    );
  }

  Widget table() {
    return Padding(
      padding: EdgeInsets.only(top: 26.h),
      child: Container(
          height: 75.h,
          decoration: BoxDecoration(
              border: Border(
            bottom: BorderSide(color: Color(0xFFCCCCCC), width: 2),
          )),
          child: Column(
            children: [
              SizedBox(
                width: 366.w,
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                  TitleText(text: 'Plumber needed', Size: 14.sp),
                  TitleText(text: 'Date', Size: 14.sp),
                  TitleText(text: 'Service fee', Size: 14.sp),
                  TitleText(text: 'Balance', Size: 14.sp),
                ]),
              ),
              SizedBox(
                height: 16.h,
              ),
              SizedBox(
                width: 366.w,
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                  BodyText(text: '#ER766', size: 14.sp),
                  SizedBox(
                    width: 21.w,
                  ),
                  BodyText(text: 'Sep 2 -Sep 4', size: 14.sp),
                  BodyText(text: '#420', size: 14.sp),
                  SizedBox(
                    width: 15.w,
                  ),
                  BodyText(text: '#420.69', size: 14.sp),
                ]),
              )
            ],
          )),
    );
  }
}
