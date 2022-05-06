import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BuildForm extends StatelessWidget {
  final String labelText;
  final String hintText;
  final TextInputType keyboardType;

  const BuildForm({required this.hintText, required this.labelText, required this.keyboardType});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        keyboardType: keyboardType,
        decoration: InputDecoration(
          labelText: labelText,
          hintText: hintText,
        ),
      ),
    );
  }
}
