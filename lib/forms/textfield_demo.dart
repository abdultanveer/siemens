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

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyFormState();
}
//what is builder designn pattern -- flat - 3M , car -2, interior-2 , 1L
class _MyFormState extends State<MyForm> {
  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: myController,
          onChanged: (textUserTyped){
            print('$textUserTyped');
          },
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
        ),
        ElevatedButton(onPressed: (){
          showDialog(context: context, builder: (context){
            return AlertDialog(
              title: Text("showing"),
              content: Text(myController.text),
            );
          });
        }, child: Text('show content'))
      ],
    );
  }
}

