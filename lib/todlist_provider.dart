import 'package:first_app/todo.dart';
import 'package:flutter/material.dart';

class TodlistProvider extends ChangeNotifier {
  List<MyTodo> _todos = [];
  List<MyTodo> get todos => _todos;

  void addTodo(MyTodo todo) {
    _todos.add(todo);
    notifyListeners();
  }

  void updateTodo(bool value, int index) {
    _todos[index].completed = value;
    notifyListeners();
  }
}
