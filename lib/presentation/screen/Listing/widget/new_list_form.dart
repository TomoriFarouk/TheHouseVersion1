// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:furniture_ui/presentation/resources/resource.dart';
// import 'package:furniture_ui/presentation/screen/cart/widget/order_text.dart';
// import 'package:furniture_ui/presentation/widget/build_form.dart';
// import 'package:furniture_ui/presentation/widget/widget.dart';

// class NewListingScreen extends StatefulWidget {
//   const NewListingScreen({Key? key}) : super(key: key);

//   @override
//   _NewListingScreenState createState() => _NewListingScreenState();
// }

// class _NewListingScreenState extends State<NewListingScreen> {
//   int _ratingController = 1;
//   bool valuefirst = false;
//   //String? _myActivity;
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
//             DropdownButtonFormField<int>(
//               value: _ratingController,
//               items: [
//                 1,
//                 2,
//                 3,
//                 4,
//                 5
//               ]
//                   .map((label) => DropdownMenuItem(
//                         // child: Text(label.toString()),
//                         value: label,
//                       ))
//                   .toList(),
//               hint: Text('Rating'),
//               onChanged: (value) {
//                 setState(() {
//                   // _ratingController = value!;
//                 });
//               },
//             ),
//             AuthButton(text: 'Continue', press: () {})
//           ],
//         ),
//       ),
//     );
//   }
// }
