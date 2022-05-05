import 'package:flutter/material.dart';
import 'package:furniture_ui/presentation/resources/resource.dart';

class ActiveCircle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 30,
      decoration: BoxDecoration(color: ColorManager.goldColor, shape: BoxShape.circle),
      child: Center(
        child: Container(
          height: 9,
          width: 9,
          decoration: BoxDecoration(color: Colors.white, shape: BoxShape.circle),
        ),
      ),
    );
  }
}
