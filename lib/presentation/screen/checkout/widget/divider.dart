import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Diivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 145.w,
      child: Divider(
        color: Colors.redAccent,
        thickness: 1,
      ),
    );
  }
}
