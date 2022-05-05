import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_ui/presentation/resources/resource.dart';
import 'package:furniture_ui/presentation/widget/widget.dart';

class ProductAppBar extends StatelessWidget with PreferredSizeWidget {
  const ProductAppBar();
  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 70.h,
      elevation: 0,
      centerTitle: false,
      leadingWidth: 0,
      title: Padding(
        padding: const EdgeInsets.all(3),
        child: Column(
          children: [
            SizedBox(height: 30.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CustomSuffixIcon(
                      svgIcon: 'assets/icons/backArrow.svg',
                    ),
                    TitleText(
                      text: 'Back',
                      Size: 20.sp,
                    ),
                  ],
                ),
                Spacer(),
                Row(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: CustomSuffixIcon(
                        svgIcon: 'assets/icons/fi_share-2.svg',
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: CustomSuffixIcon(
                        svgIcon: 'assets/icons/bookmark.svg',
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: CustomSuffixIcon(
                        svgIcon: 'assets/icons/shopping-cart.svg',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(70.h);
}
