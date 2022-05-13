import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_ui/presentation/resources/resource.dart';

class ListingTab extends StatelessWidget {
  final String text;
  const ListingTab({required this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36.h,
      width: 80.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        color: Color(0x1AEFEFEF),
      ),
      child: Text(
        text,
        style: Theme.of(context).textTheme.headline1!.copyWith(
              fontSize: 14.sp,
              color: ColorManager.goldColor,
            ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
