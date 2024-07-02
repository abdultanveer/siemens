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
  late FocusNode myFocusnode;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    myFocusnode = FocusNode();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    myFocusnode.dispose();
    myController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
            autofocus: true,
            controller: myController,
            onChanged: (textUserTyped) {
              print('$textUserTyped(${textUserTyped.characters.length})');
            },
            decoration: InputDecoration(
                border: OutlineInputBorder(), hintText: "enter your name")),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            focusNode: myFocusnode,

            decoration: InputDecoration(
                border: UnderlineInputBorder(), labelText: "enter phone no"),
          ),
        ),
        ElevatedButton(
            onPressed: () {
              myFocusnode.requestFocus();
             // showAlertDialog(context);
            },
            child: Text('show content'))
      ],
    );
  }

  void showAlertDialog(BuildContext context) {
     showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("showing"),
            content: Text(myController.text),
          );
        });
  }
}
