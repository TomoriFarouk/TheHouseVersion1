import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_ui/domain/model/model.dart';
import 'package:furniture_ui/presentation/resources/resource.dart';
import 'package:furniture_ui/presentation/screen/filter/search_page.dart';
import 'package:furniture_ui/presentation/widget/widget.dart';

class FilterPage extends StatefulWidget {
  final List<Pricing> pricing;
  final List<Discount> discount;
  const FilterPage({required this.pricing, required this.discount});
  _FilterPageState createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  int _selectedPosition = 0;
  int _selectedDiscountPosition = 0;
  bool _isExpand = true;
  bool _isDiscountExpand = true;
  bool _isFiltered = false;
  @override
  Widget build(BuildContext context) {
    return _isFiltered
        ? SearchPage()
        : Scaffold(
            appBar: AppBar(
              backgroundColor: ColorManager.appbarwithBodyColor,
              elevation: 0,
              title: Padding(
                padding: const EdgeInsets.only(top: 15.0, left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TitleText(
                      text: 'Filters',
                      Size: 20.sp,
                    ),
                    TextButton(
                      style: TextButton.styleFrom(primary: Colors.black),
                      onPressed: () {
                        Navigator.pushNamed(context, '');
                      },
                      child: Text(
                        'Reset',
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              fontSize: 14.sp,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              leading: Builder(
                builder: (BuildContext context) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 15.0, left: 20),
                    child: InkWell(
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
                  );
                },
              ),
            ),
            body: Column(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Divider(
                    color: ColorManager.dividerColor,
                    thickness: 2,
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 20.w, right: 20.w, top: 38.h),
                    child: ListView(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Pricing',
                              style: Theme.of(context).textTheme.subtitle2,
                            ),
                            InkWell(
                                onTap: () {
                                  if (_isExpand) {
                                    _isExpand = false;
                                  } else {
                                    _isExpand = true;
                                  }
                                  setState(() {});
                                },
                                child: SvgPicture.asset('assets/icons/OpenArrow.svg', height: 10.h, width: 16.w)),
                          ],
                        ),
                        Visibility(
                          child: ListView.builder(
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: widget.pricing.length,
                              itemBuilder: (context, index) {
                                return InkWell(
                                  child: Container(
                                    height: 40.h,
                                    margin: EdgeInsets.only(top: 10.h, bottom: 10.h),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Text(widget.pricing[index].text,
                                                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                                        fontSize: 14.sp,
                                                      )),
                                              new Spacer(),
                                              Align(
                                                alignment: Alignment.centerRight,
                                                child: Padding(
                                                  padding: EdgeInsets.only(right: 3),
                                                  child: Icon(
                                                    (index == _selectedPosition) ? Icons.radio_button_checked : Icons.radio_button_unchecked,
                                                    color: (index == _selectedPosition) ? ColorManager.goldColor : ColorManager.disableColor,
                                                    size: 20,
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                          flex: 1,
                                        )
                                      ],
                                    ),
                                  ),
                                  onTap: () {
                                    _selectedPosition = index;
                                    setState(() {});
                                  },
                                );
                              }),
                          visible: _isExpand,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: Divider(
                            color: ColorManager.dividerColor,
                            thickness: 2,
                          ),
                        ),
                        SizedBox(height: 11.h),
                        Column(children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Custom',
                              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                    fontSize: 14.sp,
                                  ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 15.h),
                            child: Row(
                              children: [
                                Container(
                                  width: 174.w,
                                  height: 46.h,
                                  decoration: BoxDecoration(
                                    //color: ColorManager.searchPanel,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: TextField(
                                    onChanged: (value) => print(value),
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.symmetric(
                                        horizontal: 16.w,
                                        vertical: 14.w,
                                      ),
                                      focusedBorder: InputBorder.none,
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: ColorManager.borderColor, width: AppSize.s1_5),
                                        borderRadius: BorderRadius.all(Radius.circular(10)),
                                      ),
                                      hintText: "From",
                                    ),
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  width: 174.w,
                                  height: 46.h,
                                  decoration: BoxDecoration(
                                    //color: ColorManager.searchPanel,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: TextField(
                                    onChanged: (value) => print(value),
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.symmetric(
                                        horizontal: 16.w,
                                        vertical: 14.w,
                                      ),
                                      focusedBorder: InputBorder.none,
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: ColorManager.borderColor, width: AppSize.s1_5),
                                        borderRadius: BorderRadius.all(Radius.circular(10)),
                                      ),
                                      hintText: "To",
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ]),
                        SizedBox(height: 16.h),
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: Divider(
                            color: ColorManager.dividerColor,
                            thickness: 2,
                          ),
                        ),
                        SizedBox(height: 27.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Discount Percentage',
                              style: Theme.of(context).textTheme.subtitle2,
                            ),
                            InkWell(
                                onTap: () {
                                  if (_isDiscountExpand) {
                                    _isDiscountExpand = false;
                                  } else {
                                    _isDiscountExpand = true;
                                  }
                                  setState(() {});
                                },
                                child: SvgPicture.asset('assets/icons/OpenArrow.svg', height: 10.h, width: 16.w)),
                          ],
                        ),
                        Visibility(
                          child: ListView.builder(
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: widget.discount.length,
                              itemBuilder: (context, index) {
                                return InkWell(
                                  child: Container(
                                    height: 40.h,
                                    margin: EdgeInsets.only(top: 10.h, bottom: 10.h),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Text(widget.discount[index].text,
                                                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                                        fontSize: 14.sp,
                                                      )),
                                              new Spacer(),
                                              Align(
                                                alignment: Alignment.centerRight,
                                                child: Padding(
                                                  padding: EdgeInsets.only(right: 3),
                                                  child: Icon(
                                                    (index == _selectedDiscountPosition) ? Icons.radio_button_checked : Icons.radio_button_unchecked,
                                                    color: (index == _selectedDiscountPosition) ? ColorManager.goldColor : ColorManager.disableColor,
                                                    size: 20,
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                          flex: 1,
                                        )
                                      ],
                                    ),
                                  ),
                                  onTap: () {
                                    _selectedDiscountPosition = index;
                                    setState(() {});
                                  },
                                );
                              }),
                          visible: _isDiscountExpand,
                        ),
                      ],
                    ),
                  ),
                  flex: 1,
                ),
                AuthButton(
                    text: 'Show results',
                    press: () {
                      setState(() {
                        _isFiltered = true;
                      });
                    })
              ],
            ),
          );
  }
}
