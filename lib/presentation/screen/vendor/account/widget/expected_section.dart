import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_ui/presentation/widget/title_text.dart';
import 'package:furniture_ui/presentation/widget/widget.dart';

class Expected extends StatelessWidget {
  const Expected({Key? key}) : super(key: key);
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
        height: 74.h,
        decoration: BoxDecoration(
            border: Border(
          bottom: BorderSide(color: Color(0xFFCCCCCC), width: 2),
        )),
        child: Column(
          children: [
            SizedBox(
              width: 366.w,
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                TitleText(text: 'Plumber needed', Size: 16.sp),
                TitleText(text: 'Date', Size: 16.sp),
                TitleText(text: 'Budget', Size: 16.sp),
              ]),
            ),
            SizedBox(
              height: 16.h,
            ),
            SizedBox(
              width: 366.w,
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                BodyText(text: '#ER766', size: 16.sp),
                BodyText(text: 'Sep 2 - Present', size: 16.sp),
                BodyText(text: '#420.69', size: 16.sp),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
