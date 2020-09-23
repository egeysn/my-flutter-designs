import 'package:animations/animate_page_route/animate_page_route.dart';
import 'package:flutter/material.dart';

import '../main.dart';


class Routes {
  // Route name constants
  static const String INITIAL_ROUTE = "/";
  static const String HOME = "/mainPage";
 
  static const String ERROR = "/errorPage";

  /// The map used to define our routes, needs to be supplied to [MaterialApp]
  static Map<String, WidgetBuilder> getRoutes() {
    return {
      Routes.INITIAL_ROUTE: (context) => AnimatePageScreen(),
      Routes.HOME :(context) => Page2(),
    };
  }
}
