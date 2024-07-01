import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});



  @override
  State<MyApp> createState() => _MyAppState();


}
//_MyAppState = juice
class _MyAppState extends State<MyApp> {
  int _counter = 0;

  void incrementCounter(){
    setState(() {
      _counter++;
    });
  }

  //bool isEligible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("my app bar"),
        leading: IconButton(
          onPressed: null,
          icon: Icon(
            Icons.menu,
          ),
        ),
      ),
      body: Center(
        child: Text(
          '$_counter'+" times clicked",
          textDirection: TextDirection.ltr,
          style: TextStyle(fontSize: 25.0, color: Colors.green),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: incrementCounter,
        child: Icon(Icons.add),
      ),
    );
  }
}
