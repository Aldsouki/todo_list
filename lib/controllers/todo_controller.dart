import '../models/todo.dart';

class TodoController {
  List<Todo> todos = [];

  void addTodo(Todo todo) {
    todos.add(todo);
  }

  void updateTodo(Todo todo) {
    int index = todos.indexWhere((t) => t.id == todo.id);
    if (index != -1) {
      todos[index] = todo;
    }
    // todos.remove(todo);
    // todos.add(todo);
  }

  void deleteTodo(Todo todo) {
    todos.removeWhere((t) => t.id == todo.id);
  }

  void togglecomplete(Todo todo) {
    todo.isCompleted = !todo.isCompleted;
  }
}
