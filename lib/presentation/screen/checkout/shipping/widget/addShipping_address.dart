import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_ui/presentation/widget/build_form.dart';
import 'package:furniture_ui/presentation/widget/widget.dart';

class ShippingAddress extends StatefulWidget {
  const ShippingAddress({Key? key}) : super(key: key);

  @override
  _ShippingAddressState createState() => _ShippingAddressState();
}

class _ShippingAddressState extends State<ShippingAddress> {
  bool valuefirst = false;
  @override
  Widget build(BuildContext context) {
    return Form(
      child: SizedBox(
        height: 356,
        width: 367.w,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TitleText(
              text: 'Shipping Address',
              Size: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 175.w,
                  height: 58.h,
                  child: BuildForm(
                    hintText: 'Firstname',
                    labelText: 'Name',
                    keyboardType: TextInputType.name,
                  ),
                ),
                Container(
                  width: 175.w,
                  height: 58.h,
                  child: BuildForm(
                    hintText: 'Lastname',
                    labelText: 'Name',
                    keyboardType: TextInputType.name,
                  ),
                )
              ],
            ),
            BuildForm(
              hintText: 'Home Address',
              labelText: 'Address',
              keyboardType: TextInputType.text,
            ),
            BuildForm(
              hintText: 'Phone Number',
              labelText: 'Phone',
              keyboardType: TextInputType.number,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 175.w,
                  child: BuildForm(
                    hintText: 'Firstname',
                    labelText: 'Name',
                    keyboardType: TextInputType.name,
                  ),
                ),
                Container(
                  width: 175.w,
                  child: BuildForm(
                    hintText: 'Lastname',
                    labelText: 'Name',
                    keyboardType: TextInputType.name,
                  ),
                )
              ],
            ),
            Row(
              children: [
                Checkbox(
                  checkColor: Colors.greenAccent,
                  activeColor: Colors.red,
                  value: this.valuefirst,
                  onChanged: (value) {
                    setState(() {
                      this.valuefirst = true;
                    });
                  },
                ),
                SizedBox(
                  width: 8.w,
                ),
                BodyText(text: 'Set as default shipping address', size: 14)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
