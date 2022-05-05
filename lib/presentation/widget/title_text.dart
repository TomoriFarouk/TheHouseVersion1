import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TitleText extends StatelessWidget {
  final String text;
  final double Size;

  const TitleText({required this.text, required this.Size});
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headline1!.copyWith(
            fontSize: Size.sp,
          ),
    );
  }
}
