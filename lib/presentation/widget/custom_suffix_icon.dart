import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomSuffixIcon extends StatelessWidget {
  final String svgIcon;
  const CustomSuffixIcon({
    required this.svgIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        0,
        16.5.h,
        16.5.w,
        16.5.h,
      ),
      child: SvgPicture.asset(
        svgIcon,
        height: 21.w,
      ),
    );
  }
}
