import 'package:flutter/material.dart';
import 'package:furniture_ui/presentation/resources/resource.dart';

class StarDisplay extends StatelessWidget {
  final int value;
  const StarDisplay({this.value = 0});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(5, (index) {
        return Icon(
          index < value ? Icons.star : Icons.star_border,
          color: ColorManager.goldColor,
        );
      }),
    );
  }
}
