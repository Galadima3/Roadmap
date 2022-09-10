import 'package:flutter/material.dart';
import 'package:roadmap/navigation2/detail_screen.dart';
import 'package:roadmap/navigation2/to_do.dart';

class TodosScreen extends StatelessWidget {
  final List<ToDo> todos;
  const TodosScreen({Key? key, required this.todos}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Task Manager'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index) {
        return ListTile(
          title: Text(todos[index].title),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const DetailScreen(),
                settings: RouteSettings(arguments: todos[index]),
              ),
            );
          },
        );
      }),
    );
  }
}
