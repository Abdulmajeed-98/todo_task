import 'package:flutter/material.dart';
import 'package:todo_task/core/themes/dark_theme.dart';
import 'package:todo_task/core/themes/light_theme.dart';
import 'package:todo_task/helper/route_manger.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: darkTheme,
      initialRoute: '/home',
      onGenerateRoute: RouteManger.appRouts,
    );
  }
}