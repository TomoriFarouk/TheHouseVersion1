import 'package:flutter/material.dart';
import 'package:furniture_ui/presentation/screen/screen.dart';

class TabWidget extends StatefulWidget {
  static const String routeName = '/bottom';

  final int selectedIndex;

  const TabWidget({Key? key, this.selectedIndex = 0}) : super(key: key);

  @override
  TabWidgetState createState() => TabWidgetState();
}

class TabWidgetState extends State<TabWidget> {
  PageController? _controller;
  int _selectedIndex = 0;
  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: widget.selectedIndex);
    setState(() {
      _selectedIndex = widget.selectedIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);

    return Scaffold(
      body: PageView(
        controller: _controller,
        physics: const NeverScrollableScrollPhysics(),
        onPageChanged: (v) {
          setState(() {
            _selectedIndex = v;
          });
        },
        children: [
          HomePage(),
          CategoryPage(),
          CartScreen(),
          CartScreen(),
          CartScreen(),
          // CategoryScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        backgroundColor: _theme.cardColor,
        selectedItemColor: _theme.primaryColor,
        unselectedItemColor: _theme.disabledColor,
        iconSize: 20,
        selectedLabelStyle: _theme.textTheme.bodyText2?.copyWith(
          fontSize: 10,
        ),
        unselectedLabelStyle: _theme.textTheme.subtitle1?.copyWith(
          fontSize: 10,
        ),
        type: BottomNavigationBarType.fixed,
        onTap: (v) {
          setState(() {
            _selectedIndex = v;
            _controller!.animateToPage(
              v,
              duration: const Duration(milliseconds: 200),
              curve: Curves.ease,
            );
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.home_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.category_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.bookmark_outline),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.person_outline),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: '',
          ),
        ],
      ),
    );
  }
}
