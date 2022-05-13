// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:furniture_ui/presentation/resources/resource.dart';
// import 'package:furniture_ui/presentation/screen/cart/widget/order_text.dart';
// import 'package:furniture_ui/presentation/widget/build_form.dart';
// import 'package:furniture_ui/presentation/widget/widget.dart';

// class ShippingAddress extends StatefulWidget {
//   const ShippingAddress({Key? key}) : super(key: key);

//   @override
//   _ShippingAddressState createState() => _ShippingAddressState();
// }

// class _ShippingAddressState extends State<ShippingAddress> {
//   bool valuefirst = false;
//   String? _myActivity;
//   @override
//   Widget build(BuildContext context) {
//     return Form(
//       child: SizedBox(
//         height: MediaQuery.of(context).size.height,
//         width: 375.w,
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             BuildForm(
//               hintText: 'Title',
//               labelText: 'Title',
//               keyboardType: TextInputType.text,
//             ),
//             SizedBox(height: 17.h),
//             BuildForm(
//               hintText: 'Price',
//               labelText: 'Price',
//               keyboardType: TextInputType.text,
//             ),
//             SizedBox(height: 17.h),
//             Row(
//               children: [
//                 Checkbox(
//                   checkColor: Colors.greenAccent,
//                   activeColor: ColorManager.goldColor,
//                   value: this.valuefirst,
//                   onChanged: (value) {
//                     setState(() {
//                       this.valuefirst = true;
//                     });
//                   },
//                 ),
//                 SizedBox(
//                   width: 8.w,
//                 ),
//                 BodyText(text: 'Set as default shipping address', size: 14),
//               ],
//             ),
//             SizedBox(height: 17.h),
//             BuildForm(
//               hintText: 'Price',
//               labelText: 'Price',
//               keyboardType: TextInputType.text,
//             ),
//             SizedBox(height: 17.h),
//             Container(
//               padding: EdgeInsets.all(16),
//               child: DropDownFormField(
//                 titleText: 'My workout',
//                 decoration: InputDecoration(
//                   hintText: '',
//                 ),
//                 value: _myActivity,
//                 onSaved: (value) {
//                   setState(() {
//                     _myActivity = value;
//                   });
//                 },
//                 onChanged: (value) {
//                   setState(() {
//                     _myActivity = value;
//                   });
//                 },

//                 dataSource:  ListView.builder(
//             // shrinkWrap: true,
//             // padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
//             scrollDirection: Axis.horizontal,
//             itemCount: categories.length,
//             itemBuilder: (context, index) {
//               return {
//                     "display": "Running",
//                     "value": "Running",
//                   },
//             }),
//                   {
//                     "display": "Running",
//                     "value": "Running",
//                   },
//                   {
//                     "display": "Climbing",
//                     "value": "Climbing",
//                   },
//                   {
//                     "display": "Walking",
//                     "value": "Walking",
//                   },
//                   {
//                     "display": "Swimming",
//                     "value": "Swimming",
//                   },
//                   {
//                     "display": "Soccer Practice",
//                     "value": "Soccer Practice",
//                   },
//                   {
//                     "display": "Baseball Practice",
//                     "value": "Baseball Practice",
//                   },
//                   {
//                     "display": "Football Practice",
//                     "value": "Football Practice",
//                   },
//                 ],
//                 textField: 'display',
//                 valueField: 'value',
//               ),
//             ),
//             SizedBox(
//               height: 143.h,
//             ),
//             SizedBox(
//               width: MediaQuery.of(context).size.width,
//               child: Divider(
//                 color: Color(0xFFCCCCCC),
//                 thickness: 1,
//               ),
//             ),
//             OrderText(text1: 'Total', text2: '#420.69'),
//             SizedBox(
//               height: 10.h,
//             ),
//             AuthButton(text: 'Continue', press: () {})
//           ],
//         ),
//       ),
//     );
//   }
// }
