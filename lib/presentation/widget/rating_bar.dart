import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_ui/presentation/resources/resource.dart';

class RatingBar extends StatelessWidget {
  final double ratingNumber;
  const RatingBar({required this.ratingNumber});
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 4,
        width: 247.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(414),
        ),
        child: Stack(
          children: [
            Container(
              width: ratingNumber.w,
              height: 4,
              color: ColorManager.goldColor,
            ),
            Container(
              margin: EdgeInsets.only(left: ratingNumber.w),
              height: 4,
              color: ColorManager.ratingBarColor,
            )
          ],
        ));
  }
}
