import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
      centerTitle: false,
      leadingWidth: 0,
      title: Padding(
        padding: const EdgeInsets.all(3),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Builder(
                  builder: (context) => InkWell(
                    onTap: () {
                      Scaffold.of(context).openDrawer();
                    },
                    child: CustomSuffixIcon(
                      svgIcon: 'assets/icons/backArrow.svg',
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
                        svgIcon: 'assets/icons/search-normal.svg',
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacementNamed(context, Routes.cartRoute);
                      },
                      child: CustomSuffixIcon(
                        svgIcon: 'assets/icons/notification.svg',
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10.h),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Divider(
                color: Color(0xFFCCCCCC),
                thickness: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(100.h);
}
