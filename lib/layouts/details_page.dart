import 'package:flutter/material.dart';
import 'package:siemens/layouts/ImageSection.dart';
import 'package:siemens/layouts/widgets/buttons.dart';
import 'package:siemens/layouts/widgets/description.dart';
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
            ImageSection(imageUrl: "images/lake.jpg"),
            TitleSection(name: "Savandurga", location: "bangalore"),
            ButtonSection(),
            DescriptionSection(description: "description")

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
