import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Scaffold(
      body: FeedbackForm(),
    ),
  ));
}

class FeedbackForm extends StatefulWidget {
  const FeedbackForm({super.key});

  @override
  State<FeedbackForm> createState() => _FeedbackFormState();
}

class _FeedbackFormState extends State<FeedbackForm> {
  final _formkey = GlobalKey<FormState>();

  //the widget will be rebuilt[re renndered] whenever the state changes
  @override
  Widget build(BuildContext context) {
    return Form(child: Column(
      children: <Widget>[
        TextFormField(
          validator: (value){
            if(value == null || value.isEmpty){
              return 'please enter some value';
            }
          },
        ),
        ElevatedButton(onPressed: (){
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('processing the input'),)
          );
        }, child: Text('Submit'))
      ],
    ));
  }
}
