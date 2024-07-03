import 'package:flutter/material.dart';

void main() => runApp(const GridApp());


class GridApp extends StatelessWidget {

  const GridApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "grid demo",
      home: Scaffold(
        appBar: AppBar( title: const Text("grid demo"),),
        body: GridView.count(crossAxisCount: 2,
        children: List.generate(100, (index){
          return Center(child: Text(' item no $index'));
        }),),
      ),
    );
  }
}
