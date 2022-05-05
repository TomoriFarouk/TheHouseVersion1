import 'package:flutter/material.dart';
import 'package:furniture_ui/presentation/resources/resource.dart';

class Circle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 9,
      width: 9,
      decoration: BoxDecoration(color: ColorManager.circleColor, shape: BoxShape.circle),
    );
  }
}
