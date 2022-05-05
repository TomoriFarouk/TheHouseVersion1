import 'package:flutter/material.dart';
import 'package:furniture_ui/presentation/resources/resource.dart';

class AuthAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: ColorManager.appbarwithBodyColor,
      elevation: 0,
      leading: Padding(
        padding: const EdgeInsets.only(top: 15.0, left: 20),
        child: new IconButton(
          icon: new Icon(Icons.close),
          color: Colors.black,
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(50.0);
}
