import 'package:flutter/material.dart';
import 'package:roadmap/navigation2/to_do_screen.dart';

class ToDo {
  final String title;
  final String description;
  ToDo({required this.title, required this.description});
}


void main() {
  runApp(
    MaterialApp(
      title: 'Passing Data',
      home: TodosScreen(
        todos: List.generate(11, (index) => ToDo(title: 'Task: $index', description: 'A description of what needs to be done for Task $index')),
      ),
    )
  );
}