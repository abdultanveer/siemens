import 'package:flutter/material.dart';


void main() => runApp(const TextFieldApp());


class TextFieldApp extends StatelessWidget {
  const TextFieldApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: MyForm(),
      ),
    );
  }
}

class MyForm extends StatelessWidget {
  const MyForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: "enter your name"
          )
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 16),
          child: TextField(decoration: InputDecoration(
            border: UnderlineInputBorder(),
            labelText: "enter phone no"
          ),),
        )
      ],
    );
  }
}

