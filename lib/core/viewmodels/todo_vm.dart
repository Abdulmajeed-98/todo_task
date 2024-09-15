import 'package:dio/dio.dart';
import 'package:todo_task/core/models/todos.dart';

class TodoVM {
  Future<List<Todo>?> getTodos() async {
    Dio dio = Dio();
    try {
      Response res = await dio.get('https://dummyjson.com/todos');
      List<dynamic> todoList = res.data['todos'];
      List<Todo>? allTodos = todoList.map((e) => Todo.fromJson(e as Map<String, dynamic>)).toList();
      return allTodos;
    } catch (e) {
      print(e);
    }
  }
}