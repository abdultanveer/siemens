import 'package:flutter/material.dart';
import 'package:siemens/routes/senddata/todo.dart';


class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.todo});

  final Todo todo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('todo item selected'),),
      body: Text(todo.subTitle),

    );
  }
}
