import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_ui/presentation/resources/resource.dart';
import 'package:furniture_ui/presentation/widget/widget.dart';

class HomeAppBar extends StatelessWidget with PreferredSizeWidget {
  final String svgIcon;
  final String text;
  const HomeAppBar({required this.svgIcon, required this.text});
  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 145.h,
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
                Builder(
                  builder: (context) => InkWell(
                    onTap: () {
                      Scaffold.of(context).openDrawer();
                    },
                    child: CustomSuffixIcon(
                      svgIcon: svgIcon,
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
                        svgIcon: 'assets/icons/bookmark.svg',
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
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 16.h,
              ),
              child: SearchPanel(
                svgIcon: 'assets/icons/search-normal.svg',
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(145.h);
}
