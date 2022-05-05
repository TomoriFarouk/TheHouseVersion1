import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BodyText extends StatelessWidget {
  final String text;
  final double size;
  const BodyText({
    required this.text,
    required this.size,
  });
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: TextOverflow.ellipsis,
      maxLines: 5,
      style: Theme.of(context).textTheme.bodyText2!.copyWith(
            color: Color(0xFF545045),
            fontSize: size.sp,
          ),
    );
  }
}
