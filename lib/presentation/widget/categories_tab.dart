import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_ui/domain/model/model.dart';
import 'package:furniture_ui/presentation/resources/resource.dart';
import 'package:furniture_ui/presentation/screen/category/widget/body.dart';
import 'package:furniture_ui/presentation/screen/home/widget/body.dart';
import 'package:furniture_ui/presentation/screen/log_in/widget/body.dart';
import 'package:furniture_ui/presentation/widget/test.dart';

class CategoryTab extends StatefulWidget {
  final List<Category> categories;
  final int value;

  const CategoryTab({required this.categories, required this.value});

  @override
  State<CategoryTab> createState() => _CategoryTabState();
}

class _CategoryTabState extends State<CategoryTab> {
  int selectedIndex = 2000;
  List<SubCategory> subcategory() {
    if (widget.categories.asMap().containsKey(selectedIndex)) {
      return SubCategory.subcategory.where((sb) => sb.categories == widget.categories[selectedIndex].name).toList();
    }

    return SubCategory.subcategory.toList();
  }

  @override
  Widget build(BuildContext context) {
    double WIDTH = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(left: 20.w),
      child: Column(
        children: [
          SizedBox(
            height: 41.h,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Column(
                    // crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextButton(
                        style: TextButton.styleFrom(primary: Colors.black),
                        onPressed: () {
                          setState(() {
                            selectedIndex = 2000;
                          });
                        },
                        child: Text(
                          'Home',
                          style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                fontSize: 14.sp,
                              ),
                        ),
                      ),
                      selectedIndex == 2000
                          ? Container(
                              width: 80.w,
                              height: 5.h,
                              decoration: BoxDecoration(
                                color: ColorManager.goldColor,
                                borderRadius: BorderRadius.all(Radius.circular(3)),
                              ))
                          : Container(),
                    ],
                  ),
                  SizedBox(
                    width: getProportionateScreenWidth(16, WIDTH),
                  ),
                  ListView.builder(
                      shrinkWrap: true,
                      // padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                      scrollDirection: Axis.horizontal,
                      itemCount: widget.categories.length,
                      itemBuilder: (context, index) {
                        return Row(
                          children: [
                            SizedBox(
                              //width: 110.w,
                              child: Column(
                                // crossAxisAlignment: CrossAxisAlignment.stretch,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  TextButton(
                                    style: TextButton.styleFrom(primary: Colors.black),
                                    onPressed: () {
                                      setState(() {
                                        selectedIndex = index;
                                      });
                                    },
                                    child: Text(
                                      widget.categories[index].name,
                                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                            fontSize: 14.sp,
                                          ),
                                    ),
                                  ),
                                  selectedIndex == index
                                      ? Container(
                                          width: 80.w,
                                          height: 5.h,
                                          decoration: BoxDecoration(
                                            color: ColorManager.goldColor,
                                            borderRadius: BorderRadius.all(Radius.circular(3)),
                                          ))
                                      : Container(),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: getProportionateScreenWidth(16, WIDTH),
                            )
                          ],
                        );
                      }),
                ],
              ),
            ),
          ),
          SizedBox(
              height: 900,
              child: selectedIndex == 2000
                  ? Bodys()
                  :
                  //CategoryBody(subcategory: subcategory()),
                  Test()),
        ],
      ),
    );
  }
}
