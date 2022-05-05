import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_ui/presentation/screen/checkout/widget/activeCircle.dart';
import 'package:furniture_ui/presentation/screen/checkout/widget/circle.dart';
import 'package:furniture_ui/presentation/screen/checkout/widget/divider.dart';

class StepperTab extends StatelessWidget {
  final int selectedIdex;
  const StepperTab({required this.selectedIdex});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 30.w,
        right: 30.w,
      ),
      child: Container(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            selectedIdex == 1 ? ActiveCircle() : Circle(),
            Diivider(),
            selectedIdex == 2 ? ActiveCircle() : Circle(),
            Diivider(),
            selectedIdex == 3 ? ActiveCircle() : Circle(),
          ],
        ),
      ),
    );
  }
}
