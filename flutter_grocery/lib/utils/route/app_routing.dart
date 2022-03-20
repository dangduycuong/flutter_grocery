import 'package:flutter/material.dart';

import '../../presentation/categories/add_category_route.dart';
import '../../presentation/category_detail/category_detail_route.dart';
import '../../presentation/home_bottom_navigation_bar/home_bottom_navigation_bar_route.dart';

enum RouteDefine {
  homeBottomNavigationBarScreen,
  categoryDetailScreen,
  addCategoryScreen,
}

class AppRouting {
  static MaterialPageRoute generateRoute(RouteSettings settings) {
    final routes = <String, WidgetBuilder>{
      RouteDefine.homeBottomNavigationBarScreen.name: (_) =>
          HomeBottomNavigationBarRoute.route,
      RouteDefine.categoryDetailScreen.name: (_) => CategoryDetailRoute.route,
      RouteDefine.addCategoryScreen.name: (_) => CategoriesRoute.route,
    };

    final routeBuilder = routes[settings.name];

    return MaterialPageRoute(
      builder: (context) => routeBuilder!(context),
      settings: RouteSettings(name: settings.name),
    );
  }
}
