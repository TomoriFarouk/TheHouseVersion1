import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_ui/presentation/resources/resource.dart';
import 'package:furniture_ui/presentation/widget/widget.dart';

class ListingAppBar extends StatelessWidget with PreferredSizeWidget {
  final String text;
  const ListingAppBar({required this.text});
  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 100.h,
      elevation: 0,
      centerTitle: true,
      leadingWidth: 0,
      title: Padding(
        padding: const EdgeInsets.all(3),
        child: Column(
          children: [
            SizedBox(height: 15.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Builder(
                  builder: (context) => InkWell(
                    onTap: () {
                      Scaffold.of(context).openDrawer();
                    },
                    child: SvgPicture.asset(
                      'assets/icons/backArrow.svg',
                      height: 20.h,
                      width: 20.w,
                      //color: ColorManager.goldColor,
                    ),
                  ),
                ),
                TitleText(
                  text: text,
                  Size: 20.0,
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Scaffold.of(context).openDrawer();
                      },
                      child: CustomSuffixIcon(
                        svgIcon: 'assets/icons/search_normal.svg',
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacementNamed(context, Routes.cartRoute);
                      },
                      child: CustomSuffixIcon(
                        svgIcon: 'assets/icons/shopping-cart.svg',
                      ),
                    ),
                  ],
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
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(100.h);
}
