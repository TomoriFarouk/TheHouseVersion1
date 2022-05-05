import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_ui/presentation/widget/widget.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: MediaQuery.of(context).size.height,
          margin: EdgeInsets.only(left: 20.w, right: 20.w, top: 38.h),
          child: Column(children: [
            SearchPanel(
              svgIcon: 'assets/icons/arrow-left-24.svg',
            ),
            SizedBox(height: 18.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Pricing',
                  style: Theme.of(context).textTheme.subtitle2,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: SvgPicture.asset(
                    'assets/icons/cancel.svg',
                    height: 10.h,
                    width: 16.w,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.h),
            Container(
              child: Align(
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Sofa 1',
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              fontSize: 14.sp,
                            )),
                    SizedBox(height: 10.h),
                    Text('Sofa 1',
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              fontSize: 14.sp,
                            )),
                  ],
                ),
              ),
            ),
          ])),
    );
  }
}
