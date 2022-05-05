import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_ui/presentation/resources/resource.dart';
import 'package:furniture_ui/presentation/widget/widget.dart';

class OrderText extends StatelessWidget {
  final String text1;
  final String text2;

  const OrderText({
    required this.text1,
    required this.text2,
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButton(
          style: TextButton.styleFrom(primary: Colors.black),
          onPressed: () {
            Navigator.pushNamed(context, '');
          },
          child: Text(
            text1,
            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  fontSize: 14.sp,
                ),
          ),
        ),
        TitleText(text: text2, Size: 14),
      ],
    );
  }
}
