import 'package:flutter/material.dart';
import 'package:todo_task/core/views/home_screen.dart';
import 'package:todo_task/core/views/not_found_screen.dart';

class RouteManger {
  static Route<dynamic>? appRouts(RouteSettings route) {
    switch (route.name) {
      case '/home':
        return MaterialPageRoute(builder: (ctx) => HomeScreen());
      default:
        return MaterialPageRoute(builder: (ctx) => NotFoundScreen());
    }
  }
}
