import 'package:flutter/material.dart';
import 'package:siemens/routes/senddata/details_screen.dart';
import 'package:siemens/routes/senddata/todo.dart';


final todolist = List.generate(20, (index){
  return Todo('title -$index', 'subTitle -$index');
});


void main(){
  runApp(MaterialApp(home: TodoScreen(todos: todolist,),));
}


class TodoScreen extends StatelessWidget {
  const TodoScreen({super.key,required this.todos});
  final List<Todo> todos;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('to do list'),),
      body: ListView.builder(
          itemCount: todos.length,
          itemBuilder: (context,index){
            return ListTile(
              title: Text(todos[index].title),
              //subtitle: Text(todos[index].subTitle),
              onTap: (){
                Navigator.push(context,
                MaterialPageRoute(builder: (context){return DetailsScreen(todo: todos[index]);}));
              },
            );
          }),
    );
  }
}


