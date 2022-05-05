import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_ui/presentation/widget/widget.dart';

class CheckoutAppbar extends StatelessWidget with PreferredSizeWidget {
  const CheckoutAppbar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 100.h,
      elevation: 0,
      centerTitle: true,
      leadingWidth: 0,
      title: Column(
        children: [
          SizedBox(height: 15.h),
          Row(
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: SvgPicture.asset(
                  'assets/icons/backArrow.svg',
                  height: 20.h,
                  width: 20.w,
                  //color: ColorManager.goldColor,
                ),
              ),
              TitleText(
                text: 'Checkout',
                Size: 20.sp,
              ),
            ],
          ),
          SizedBox(height: 19.h),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Divider(
              color: Color(0xFFCCCCCC),
              thickness: 1,
            ),
          ),
          SizedBox(height: 19.h),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(100.h);
}
