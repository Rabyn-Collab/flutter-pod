import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverspods/models/todo.dart';




final todoProvider = StateNotifierProvider<TodoProvider, List<Todo>>((ref) => TodoProvider([
  Todo(created_at: '2023', todo: 'some books to read'),
  Todo(created_at: '2024', todo: 'some books to write'),
]));

class TodoProvider extends StateNotifier<List<Todo>>{
  TodoProvider(super.state);


  void addTodo(Todo todo){
    state = [...state, todo];
  }






}