import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_ui/presentation/resources/resource.dart';
import 'package:furniture_ui/presentation/widget/widget.dart';

class SearchPanel extends StatelessWidget {
  final String svgIcon;
  SearchPanel({required this.svgIcon});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 414.w,
      height: 52.h,
      decoration: BoxDecoration(
        //color: ColorManager.searchPanel,
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextField(
        onChanged: (value) => print(value),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(
            horizontal: 25.w,
            vertical: 14.h,
          ),
          focusedBorder: InputBorder.none,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: ColorManager.borderColor, width: AppSize.s1_5),
            borderRadius: BorderRadius.all(Radius.circular(32)),
          ),
          hintText: "Search for anything",
          prefixIcon: Padding(
            padding: EdgeInsets.only(left: 10.w),
            child: CustomSuffixIcon(
              svgIcon: svgIcon,
            ),
          ),
        ),
      ),
    );
  }
}
