import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_ui/presentation/resources/resource.dart';
import 'package:furniture_ui/presentation/widget/widget.dart';

class SectionTitle extends StatelessWidget {
  final String text1;
  final String text2;

  const SectionTitle({
    required this.text1,
    required this.text2,
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TitleText(text: text1, Size: 14),
        TextButton(
          style: TextButton.styleFrom(primary: Colors.black),
          onPressed: () {
            Navigator.pushNamed(context, '');
          },
          child: Text(
            text2,
            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  fontSize: 14.sp,
                ),
          ),
        ),
      ],
    );
  }
}
