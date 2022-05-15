import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_ui/presentation/resources/resource.dart';
import 'package:furniture_ui/presentation/widget/widget.dart';

class ProgressBar extends StatelessWidget {
  final Color color2;
  final Color color3;
  final Color color4;
  const ProgressBar({
    required this.color2,
    required this.color3,
    required this.color4,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 24.w,
        right: 24.w,
      ),
      child: Container(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    activeCircle(text: '1', color: ColorManager.goldColor),
                    divider(color: color2),
                  ],
                ),
                SizedBox(height: 14.h),
                TitleText(text: 'Sign Up', Size: 14.sp)
              ],
            ),
            Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    activeCircle(text: '2', color: color2),
                    divider(color: color3),
                  ],
                ),
                SizedBox(height: 14.h),
                TitleText(text: 'Job Info', Size: 14.sp)
              ],
            ),
            Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    activeCircle(text: '3', color: color3),
                    divider(color: color4),
                  ],
                ),
                SizedBox(height: 14.h),
                TitleText(text: 'License', Size: 14.sp)
              ],
            ),
            Column(
              children: [
                activeCircle(text: '4', color: color4),
                SizedBox(height: 14.h),
                TitleText(text: 'Review', Size: 14.sp)
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget activeCircle({Color? color, String? text}) {
    return Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(color: color, shape: BoxShape.circle),
        child: Center(
          child: Text(text!),
        ));
  }

  Widget divider({Color? color}) {
    return SizedBox(
      width: 46.w,
      child: Divider(
        color: color,
        thickness: 1,
      ),
    );
  }
}
