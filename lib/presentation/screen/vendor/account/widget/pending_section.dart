import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_ui/presentation/widget/widget.dart';

class Pending extends StatelessWidget {
  const Pending({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
