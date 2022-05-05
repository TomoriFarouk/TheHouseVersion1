import 'package:flutter/material.dart';

import 'RegisterPage.dart';
import 'TabWidget.dart';

class LoginPage extends StatefulWidget {
  _LoginPage createState() {
    return _LoginPage();
  }
}

class _LoginPage extends State<LoginPage> {
  Future<bool> _requestPop() {
    Navigator.of(context).pop();
    return new Future.value(false);
  }

  @override
  Widget build(BuildContext context) {
    return Container();
    //   SizeConfig().init(context);
    //   return WillPopScope(
    //     child: Scaffold(
    //         backgroundColor: ConstantData.bgColor,
    //         appBar: AppBar(
    //           centerTitle: true,
    //           elevation: 0,
    //           backgroundColor: ConstantData.bgColor,
    //           title: Text(""),
    //           leading: Builder(
    //             builder: (BuildContext context) {
    //               return Icon(
    //                 Icons.keyboard_backspace,
    //                 color: Colors.transparent,
    //               );
    //             },
    //           ),
    //         ),
    //         body: Container(
    //           margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.09, bottom: MediaQuery.of(context).size.height * 0.02, left: MediaQuery.of(context).size.width * 0.05, right: MediaQuery.of(context).size.width * 0.05),
    //           child: Column(
    //             crossAxisAlignment: CrossAxisAlignment.start,
    //             mainAxisAlignment: MainAxisAlignment.start,
    //             children: [
    //               Container(
    //                 child: Text(
    //                   S.of(context).signYouIn,
    //                   textAlign: TextAlign.start,
    //                   style: TextStyle(fontFamily: "SFProText", fontWeight: FontWeight.bold, fontSize: 25, color: ConstantData.textColor),
    //                 ),
    //               ),
    //               Container(
    //                 margin: EdgeInsets.only(
    //                   bottom: MediaQuery.of(context).size.height * 0.03,
    //                 ),
    //                 child: Text(
    //                   S.of(context).SignInMsg,
    //                   textAlign: TextAlign.start,
    //                   style: TextStyle(fontFamily: "SFProText", fontWeight: FontWeight.w500, fontSize: 15, color: ConstantData.primaryTextColor),
    //                 ),
    //               ),
    //               Padding(
    //                 padding: EdgeInsets.only(top: 20, bottom: 10),
    //                 child: Align(
    //                     alignment: Alignment.topLeft,
    //                     child: Text(
    //                       S.of(context).emailAddress,
    //                       textAlign: TextAlign.start,
    //                       style: TextStyle(fontFamily: "SFProText", fontWeight: FontWeight.bold, fontSize: 14, color: ConstantData.textColor),
    //                     )),
    //               ),
    //               Container(
    //                 margin: EdgeInsets.only(bottom: 15),
    //                 height: MediaQuery.of(context).size.height * 0.07,
    //                 child: TextField(
    //                   maxLines: 1,
    //                   style: TextStyle(fontFamily: "SFProText", color: ConstantData.primaryTextColor, fontWeight: FontWeight.w400, fontSize: 16),
    //                   decoration: InputDecoration(
    //                       contentPadding: EdgeInsets.only(top: 3, left: 8),
    //                       enabledBorder: OutlineInputBorder(
    //                         borderSide: BorderSide(color: ConstantData.textColor, width: 0.3),
    //                         borderRadius: const BorderRadius.all(
    //                           const Radius.circular(8),
    //                         ),
    //                       ),
    //                       focusedBorder: OutlineInputBorder(
    //                         borderSide: BorderSide(color: ConstantData.textColor, width: 0.3),
    //                         borderRadius: const BorderRadius.all(
    //                           const Radius.circular(15),
    //                         ),
    //                       ),
    //                       hintStyle: TextStyle(fontFamily: "SFProText", color: ConstantData.textColor, fontWeight: FontWeight.w400, fontSize: 16)),
    //                 ),
    //               ),
    //               Padding(
    //                 padding: EdgeInsets.only(bottom: 10),
    //                 child: Align(
    //                     alignment: Alignment.topLeft,
    //                     child: Text(
    //                       S.of(context).password,
    //                       textAlign: TextAlign.start,
    //                       style: TextStyle(fontFamily: "SFProText", fontWeight: FontWeight.bold, fontSize: 14, color: ConstantData.textColor),
    //                     )),
    //               ),
    //               Container(
    //                 height: MediaQuery.of(context).size.height * 0.07,
    //                 child: TextField(
    //                   maxLines: 1,
    //                   style: TextStyle(fontFamily: "SFProText", color: ConstantData.primaryTextColor, fontWeight: FontWeight.w400, fontSize: 16),
    //                   obscureText: true,
    //                   decoration: InputDecoration(
    //                       contentPadding: EdgeInsets.only(top: 3, left: 8),
    //                       enabledBorder: OutlineInputBorder(
    //                         borderSide: BorderSide(color: ConstantData.textColor, width: 0.3),
    //                         borderRadius: const BorderRadius.all(
    //                           const Radius.circular(8),
    //                         ),
    //                       ),
    //                       focusedBorder: OutlineInputBorder(
    //                         borderSide: BorderSide(color: ConstantData.textColor, width: 0.3),
    //                         borderRadius: const BorderRadius.all(
    //                           const Radius.circular(15),
    //                         ),
    //                       ),
    //                       hintStyle: TextStyle(fontFamily: "SFProText", color: ConstantData.textColor, fontWeight: FontWeight.w400, fontSize: 16)),
    //                 ),
    //               ),
    //               Align(
    //                 alignment: Alignment.topRight,
    //                 child: InkWell(
    //                   child: Text(
    //                     S.of(context).forgotPassword,
    //                     textAlign: TextAlign.start,
    //                     style: TextStyle(
    //                       fontFamily: "SFProText",
    //                       fontWeight: FontWeight.bold,
    //                       fontSize: 15,
    //                       color: ConstantData.textColor,
    //                     ),
    //                   ),
    //                   onTap: () {
    //                     Navigator.push(context, MaterialPageRoute(builder: (context) => ForgotPasswordPage()));
    //                   },
    //                 ),
    //               ),
    //               Expanded(
    //                 child: Stack(
    //                   children: [
    //                     InkWell(
    //                       child: Container(
    //                           margin: EdgeInsets.only(top: 40),
    //                           height: 50,
    //                           decoration: BoxDecoration(color: ConstantData.primaryColor, borderRadius: BorderRadius.all(Radius.circular(8))),
    //                           child: InkWell(
    //                             child: Center(
    //                               child: Text(
    //                                 S.of(context).login,
    //                                 style: TextStyle(fontFamily: "SFProText", fontWeight: FontWeight.w900, fontSize: 15, color: Colors.white, decoration: TextDecoration.none),
    //                               ),
    //                             ),
    //                           )),
    //                       onTap: () {
    //                         PrefData.setIsSignIn(true);

    //                         Navigator.pushReplacement(
    //                             context,
    //                             MaterialPageRoute(
    //                               builder: (context) => TabWidget(),
    //                             ));

    //                         // Navigator.push(
    //                         //     context,
    //                         //     MaterialPageRoute(
    //                         //         builder: (context) => MyHomePage()));

    //                         // Navigator.of(context).pop(true);
    //                       },
    //                     ),
    //                     Align(
    //                       alignment: Alignment.bottomCenter,
    //                       child: Row(
    //                         mainAxisAlignment: MainAxisAlignment.center,
    //                         children: [
    //                           Text(
    //                             S.of(context).donHaveAnAccount,
    //                             textAlign: TextAlign.start,
    //                             style: TextStyle(fontFamily: "SFProText", fontWeight: FontWeight.bold, fontSize: 15, color: ConstantData.primaryTextColor),
    //                           ),
    //                           InkWell(
    //                             child: Text(
    //                               S.of(context).register.toUpperCase(),
    //                               textAlign: TextAlign.start,
    //                               style: TextStyle(
    //                                 fontFamily: "SFProText",
    //                                 fontWeight: FontWeight.bold,
    //                                 fontSize: 15,
    //                                 color: ConstantData.textColor,
    //                                 decoration: TextDecoration.underline,
    //                               ),
    //                             ),
    //                             onTap: () {
    //                               Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterPage()));
    //                             },
    //                           )
    //                         ],
    //                       ),
    //                     )
    //                   ],
    //                 ),
    //                 flex: 1,
    //               ),
    //             ],
    //           ),
    //         )),
    //     onWillPop: _requestPop,
    //   );
  }
}
