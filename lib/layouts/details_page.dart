import 'package:flutter/material.dart';
import 'package:siemens/layouts/widgets/title.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "layouts demo",
      home: Scaffold(
        appBar: AppBar(title: Text("Destination details"),),
        body: Column(
          children: [
            Text("image row 1"),
            TitleSection(name: "Savandurga", location: "bangalore"),
            Text("buttons row 1"),
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
