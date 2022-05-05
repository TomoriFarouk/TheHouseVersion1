import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_ui/domain/model/model.dart';
import 'package:furniture_ui/presentation/resources/resource.dart';
import 'package:furniture_ui/presentation/widget/widget.dart';

class ProductReviews extends StatelessWidget {
  final ProductReview review;
  const ProductReviews({required this.review});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            height: 177.h,
            width: 313.w,
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(color: ColorManager.borderColor, width: AppSize.s1_5),
                right: BorderSide(color: ColorManager.borderColor, width: AppSize.s1_5),
                bottom: BorderSide(color: ColorManager.borderColor, width: AppSize.s1_5),
                left: BorderSide(color: ColorManager.borderColor, width: AppSize.s1_5),
              ),
              borderRadius: BorderRadius.all(Radius.circular(12.sp)),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(children: [
                    SvgPicture.asset(
                      review.imageUrl,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 19.w),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 8.37.h),
                            child: Text(
                              review.name,
                              style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 12.sp, color: ColorManager.primaryColor),
                            ),
                          ),
                          IconTheme(
                            data: IconThemeData(
                              color: Colors.amber,
                              size: 12,
                            ),
                            child: StarDisplay(value: 5),
                          )
                        ],
                      ),
                    )
                  ]),
                  Padding(
                    padding: EdgeInsets.only(top: 16.h),
                    child: Text(
                      review.complement,
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 14.sp, color: ColorManager.primaryColor),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 8.h),
                    child: Text(
                      review.review,
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            fontSize: 12.sp,
                          ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 8.h),
                    child: Text(
                      review.date,
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            fontSize: 12.sp,
                          ),
                    ),
                  )
                ],
              ),
            )),
        SizedBox(width: 16.w)
      ],
    );
  }
}
