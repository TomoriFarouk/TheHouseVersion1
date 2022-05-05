import 'package:flutter/material.dart';
import 'package:furniture_ui/domain/model/model.dart';
import 'package:furniture_ui/presentation/screen/category/widget/body.dart';
import 'package:furniture_ui/presentation/screen/home/widget/home_appbar.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({Key? key}) : super(key: key);
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(
        text: "TheHouse",
        svgIcon: 'assets/icons/menu.svg',
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          // height: 50.h,
          child: CategoryBody(
            category: Category.categories.toList(),
          ),
        ),
      ),
    );
  }
}
