import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_ui/presentation/resources/resource.dart';
import 'package:furniture_ui/presentation/widget/widget.dart';

class ReviewSec extends StatelessWidget {
  final String starNumber;
  final double ratingNumber;
  final String percentage;

  const ReviewSec({
    required this.starNumber,
    required this.ratingNumber,
    required this.percentage,
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          starNumber,
          style: Theme.of(context).textTheme.subtitle2!.copyWith(
                fontSize: 14.sp,
              ),
        ),
        Icon(
          Icons.star,
          color: ColorManager.goldColor,
          size: 12.sp,
        ),
        RatingBar(ratingNumber: ratingNumber),
        Text(
          percentage,
          style: Theme.of(context).textTheme.subtitle2!.copyWith(
                fontSize: 14.sp,
              ),
        ),
      ],
    );
  }
}
