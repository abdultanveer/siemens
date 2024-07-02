import 'package:flutter/material.dart';
import 'package:siemens/layouts/widgets/buttons.dart';
import 'package:siemens/layouts/widgets/title.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "layouts demo",
      home: Scaffold(
        appBar: AppBar(title: Text("Destination details"), backgroundColor: Colors.blueAccent,),
        body: Column(
          children: [
            Text("image row 1"),
            TitleSection(name: "Savandurga", location: "bangalore"),
            ButtonSection(),
            Text(" description row 1"),

          ],
        ),
      ),
    );
    //image
    //title section
    //buttons section
    //description
  }
}
