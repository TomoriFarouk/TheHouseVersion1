import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_ui/domain/model/model.dart';
import 'package:furniture_ui/presentation/resources/resource.dart';
import 'package:furniture_ui/presentation/widget/widget.dart';

class AddressCard extends StatefulWidget {
  final Address address;
  final int onPressed;
  final int selectedPosition;

  const AddressCard({required this.address, required this.onPressed, required this.selectedPosition});

  _AddressCardState createState() => _AddressCardState();
}

class _AddressCardState extends State<AddressCard> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 120,
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              (widget.onPressed == widget.selectedPosition) ? Icons.radio_button_checked : Icons.radio_button_unchecked,
              color: (widget.onPressed == widget.selectedPosition) ? ColorManager.goldColor : ColorManager.disableColor,
              size: 20,
            ),
            SizedBox(width: 14.w),
            Expanded(
              child: Container(
                height: 100,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        TitleText(
                          text: widget.address.firstname,
                          Size: 16,
                        ),
                        TitleText(
                          text: widget.address.lastname,
                          Size: 16,
                        ),
                      ],
                    ),
                    BodyText(text: widget.address.homeAddress, size: 14),
                    Row(children: [
                      BodyText(text: widget.address.state, size: 14),
                      Text(','),
                      BodyText(text: widget.address.country, size: 14),
                    ]),
                    BodyText(text: widget.address.phonenumber.toString(), size: 14)
                  ],
                ),
              ),
            ),
            TextButton(
              style: TextButton.styleFrom(primary: Colors.black),
              onPressed: () {
                Navigator.pushNamed(context, '');
              },
              child: Text(
                'Edit',
                style: Theme.of(context).textTheme.bodyText2!.copyWith(
                      color: Color(0xFF8D9091),
                      fontSize: 14.sp,
                    ),
              ),
            ),
          ],
        ));
  }
}
