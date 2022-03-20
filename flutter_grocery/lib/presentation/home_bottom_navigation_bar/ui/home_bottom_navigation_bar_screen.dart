import 'package:flutter/material.dart';

import '../../../utils/route/app_routing.dart';
import '../../categories/ui/categories_screen.dart';
import '../../selling/ui/selling_screen.dart';
import '../../statistics/ui/statistics_screen.dart';

class HomeBottomNavigationBarScreen extends StatefulWidget {
  const HomeBottomNavigationBarScreen({Key? key}) : super(key: key);

  @override
  _HomeBottomNavigationBarScreenState createState() =>
      _HomeBottomNavigationBarScreenState();
}

class _HomeBottomNavigationBarScreenState
    extends State<HomeBottomNavigationBarScreen> {
  int _selectedIndex = 0;

  String get titleAppBar {
    String result = '';
    switch (_selectedIndex) {
      case 0:
        result = 'Danh mục';
        break;
      case 1:
        result = 'Bán chạy';
        break;
      default:
        result = 'Thống kê';
        break;
    }
    return result;
  }

  static const List<Widget> _widgetOptions = <Widget>[
    CategoriesScreen(),
    SellingScreen(),
    StatisticsScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onTapAppBar() {
    Navigator.pushNamed(
      context,
      RouteDefine.addCategoryScreen.name,
    );
  }

  Widget _getActionsList() {
    return IconButton(
      onPressed: _onTapAppBar,
      icon: const Icon(Icons.add),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(titleAppBar),
        actions: [_getActionsList()],
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.select_all),
            label: 'Home',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Favorites',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Thống kê',
            backgroundColor: Colors.green,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
