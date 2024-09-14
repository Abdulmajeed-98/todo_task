class Todos {
  List<Todos>? todos;
  int? total;
  int? skip;
  int? limit;

  Todos({this.todos, this.total, this.skip, this.limit});

  Todos.fromJson(Map<String, dynamic> json) {
    if (json['todos'] != null) {
      todos = <Todos>[];
      json['todos'].forEach((v) {
        todos!.add(new Todos.fromJson(v));
      });
    }
    total = json['total'];
    skip = json['skip'];
    limit = json['limit'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.todos != null) {
      data['todos'] = this.todos!.map((v) => v.toJson()).toList();
    }
    data['total'] = this.total;
    data['skip'] = this.skip;
    data['limit'] = this.limit;
    return data;
  }
}

class Todo {
  int? id;
  String? todo;
  bool? isCompleted;
  int? userId;

  Todo({this.id, this.todo, this.isCompleted, this.userId});

  Todo.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    todo = json['todo'];
    isCompleted = json['completed'];
    userId = json['userId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['todo'] = this.todo;
    data['completed'] = this.isCompleted;
    data['userId'] = this.userId;
    return data;
  }
}
