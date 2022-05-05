import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_ui/domain/model/category/sub_category.dart';
import 'package:furniture_ui/presentation/resources/resource.dart';

class SubCategoryCell extends StatelessWidget {
  final SubCategory subcategory;
  const SubCategoryCell({required this.subcategory});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 5.h,
        bottom: 10.h,
      ),
      child: SizedBox(
        height: 20.h,
        child: Align(
          alignment: Alignment.topLeft,
          child: TextButton(
            //style: TextButton.styleFrom(primary: Colors.black),
            onPressed: () {
              Navigator.pushNamed(
                context,
                Routes.productPageRoute,
                arguments: subcategory,
              );
            },
            child: Text(
              subcategory.name,
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    fontSize: 14.sp,
                  ),
            ),
          ),
        ),
      ),
    );
  }
}
