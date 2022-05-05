import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_ui/presentation/resources/resource.dart';
import 'package:furniture_ui/presentation/widget/widget.dart';
import 'package:flutter_svg/svg.dart';

class Filter extends StatelessWidget {
  const Filter({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 50.h,
          width: 175.w,
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(color: ColorManager.borderColor, width: AppSize.s1_5),
              right: BorderSide(color: ColorManager.borderColor, width: AppSize.s1_5),
              bottom: BorderSide(color: ColorManager.borderColor, width: AppSize.s1_5),
              left: BorderSide(color: ColorManager.borderColor, width: AppSize.s1_5),
            ),
            borderRadius: BorderRadius.all(Radius.circular(32)),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 15.w,
              vertical: 15.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SvgPicture.asset('assets/icons/filter.svg', height: 10.h, width: 16.w),
                Text('Sort by'),
                SvgPicture.asset('assets/icons/OpenArrow.svg', height: 5.w, width: 8.w),
              ],
            ),
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.pushReplacementNamed(context, Routes.filterRoute);
          },
          child: Container(
            height: 50.h,
            width: 175.w,
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(color: ColorManager.borderColor, width: AppSize.s1_5),
                right: BorderSide(color: ColorManager.borderColor, width: AppSize.s1_5),
                bottom: BorderSide(color: ColorManager.borderColor, width: AppSize.s1_5),
                left: BorderSide(color: ColorManager.borderColor, width: AppSize.s1_5),
              ),
              borderRadius: BorderRadius.all(Radius.circular(32)),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 15.w,
                vertical: 15.h,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SvgPicture.asset('assets/icons/filter.svg', height: 10.h, width: 16.w),
                  Text('filter'),
                  SvgPicture.asset('assets/icons/OpenArrow.svg', height: 5.w, width: 8.w),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
