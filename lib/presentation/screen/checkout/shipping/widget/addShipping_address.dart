import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_ui/presentation/screen/cart/widget/order_text.dart';
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
        height: MediaQuery.of(context).size.height,
        width: 375.w,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TitleText(
              text: 'Personal Infornmation',
              Size: 16,
            ),
            SizedBox(height: 25.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  //height: 58.h,
                  child: BuildForm(
                    hintText: 'Lastname',
                    labelText: 'Name',
                    keyboardType: TextInputType.name,
                  ),
                )
              ],
            ),
            SizedBox(height: 17.h),
            BuildForm(
              hintText: 'Home Address',
              labelText: 'Address',
              keyboardType: TextInputType.text,
            ),
            SizedBox(height: 17.h),
            BuildForm(
              hintText: 'Phone Number',
              labelText: 'Phone',
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 17.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
            SizedBox(height: 17.h),
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
                BodyText(text: 'Set as default shipping address', size: 14),
              ],
            ),
            SizedBox(
              height: 143.h,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Divider(
                color: Color(0xFFCCCCCC),
                thickness: 1,
              ),
            ),
            OrderText(text1: 'Total', text2: '#420.69'),
            SizedBox(
              height: 10.h,
            ),
            AuthButton(text: 'Continue', press: () {})
          ],
        ),
      ),
    );
  }
}
