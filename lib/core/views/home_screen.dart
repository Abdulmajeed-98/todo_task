import 'package:flutter/material.dart';
import 'package:todo_task/core/views/all_screen.dart';
import 'package:todo_task/core/views/completed_screen.dart';
import 'package:todo_task/core/views/in_progress_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Todos app'),
            bottom: TabBar(tabs: [
              Text('All'),
              Text('Completed'),
              Text('In Progress'),
            ]),
          ),
          body: TabBarView(children: [
            AllScreen(),
            CompletedScreen(),
            InProgressScreen(),
          ]),
        ));
  }
}
