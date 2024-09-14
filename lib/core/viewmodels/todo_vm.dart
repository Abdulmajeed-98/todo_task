import 'package:dio/dio.dart';
import 'package:todo_task/core/models/todos.dart';

class TodoVM {
  Future<List<Todo>?> getTodos() async {
    Dio dio = Dio();
    try {
      Response res = await dio.get('https://dummyjson.com/todos');
      List<Todo>? allTodos = res.data.map((e) => Todo.fromJson(e)).toList();
      return allTodos;
    } catch (e) {
      print(e);
    }
  }
}
