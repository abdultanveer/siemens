import 'package:flutter/material.dart';

void main() {
  runApp(
  MaterialApp(
    title: "Demo-flutter-siemens" ,
    home: MyWidget(),
  )
  );
}

//stateless -- fruti tetra pack without juice, stateful -- tetra pack with juice -- juice = state
class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("app bar"),
      ),
      body: const   Center(
        child: Text("hello scaffold",
          textDirection: TextDirection.ltr,
          style: TextStyle(fontSize: 25.0,color: Colors.green),),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: null,
      ),
    );
  }
}



