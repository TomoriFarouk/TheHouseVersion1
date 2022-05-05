import 'package:flutter/material.dart';
import 'package:furniture_ui/domain/model/model.dart';
import 'package:furniture_ui/presentation/resources/resource.dart';
import 'package:furniture_ui/presentation/widget/widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryBody extends StatefulWidget {
  //final List<SubCategory> subcategory;
  final List<Category> category;
  const CategoryBody({required this.category});

  @override
  State<CategoryBody> createState() => _CategoryBodyState();
}

class _CategoryBodyState extends State<CategoryBody> {
  int? selectedIndex;

  List<SubCategory> subcategory() {
    if (widget.category.asMap().containsKey(selectedIndex)) {
      return SubCategory.subcategory.where((sb) => sb.categories == widget.category[selectedIndex!].name).toList();
    }

    return SubCategory.subcategory.toList();
  }

  bool _isExpand = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20.h, right: 20.w, left: 20.w),
      child: SizedBox(
          height: 1000.h,
          child: ListView.builder(
            itemCount: widget.category.length,
            itemBuilder: (context, index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    height: 70.h,
                    decoration: BoxDecoration(
                        border: Border(
                      bottom: BorderSide(color: ColorManager.dividerColor, width: 2),
                    )),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TitleText(text: widget.category[index].name, Size: 14),
                        RotatedBox(
                          quarterTurns: 2,
                          child: IconButton(
                            onPressed: () {
                              //Navigator.pushNamed(context, '/catalog', arguments: category[index]);
                              if (_isExpand) {
                                _isExpand = false;
                              } else {
                                _isExpand = true;
                              }
                              setState(() {
                                selectedIndex = index;
                              });
                            },
                            color: ColorManager.bodyTextColor,
                            icon: Icon(_isExpand ? Icons.expand_less : Icons.arrow_back_ios),
                            iconSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  selectedIndex == index
                      ? Visibility(
                          child: ListView.builder(
                            itemCount: subcategory().length,
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) {
                              return SubCategoryCell(
                                subcategory: subcategory()[index],
                              );
                            },
                          ),
                          visible: _isExpand,
                        )
                      : Container(),
                ],
              );
            },
          )),
    );
  }
}
