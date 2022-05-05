import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_ui/domain/model/model.dart';
import 'package:furniture_ui/presentation/resources/resource.dart';
import 'package:furniture_ui/presentation/screen/home/widget/body.dart';
import 'package:furniture_ui/presentation/screen/home/widget/home_appbar.dart';
import 'package:furniture_ui/presentation/widget/drawer_screen.dart';
import 'package:furniture_ui/presentation/widget/widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  static const String routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerScreen(),
      appBar: HomeAppBar(
        text: 'TheHouse',
        svgIcon: 'assets/icons/menu.svg',
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          // height: 50.h,
          child: CategoryTab(
            categories: Category.categories.toList(),
            value: 1,
          ),
        ),
      ),
    );
  }
}
