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
  //conntext = history
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$_counter'+" times clicked",
              textDirection: TextDirection.ltr,
              style: TextStyle(fontSize: 25.0, color: Colors.green),
            ),
            ElevatedButton(onPressed: (){
              final snackBar = SnackBar(content: Text("lets have some snacks"),action: SnackBarAction(label: "undo",onPressed: (){},),);
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            }, child: Text("show snackbar"))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: incrementCounter,
        child: Icon(Icons.add),
      ),
    );
  }

}
