import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_ui/presentation/widget/build_form.dart';
import 'package:furniture_ui/presentation/widget/widget.dart';

class ContactInfo extends StatefulWidget {
  const ContactInfo({Key? key}) : super(key: key);

  @override
  _ContactInfoState createState() => _ContactInfoState();
}

class _ContactInfoState extends State<ContactInfo> {
  bool valuefirst = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 136,
        width: 365.w,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TitleText(
              text: 'Contact Information',
              Size: 16,
            ),
            BuildForm(
              hintText: 'Email Address',
              labelText: 'Email',
              keyboardType: TextInputType.emailAddress,
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
                BodyText(text: 'Yes, I want to recieve emails and offers', size: 14)
              ],
            ),
          ],
        ));
  }
}
