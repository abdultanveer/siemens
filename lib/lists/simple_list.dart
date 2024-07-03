import 'package:flutter/material.dart';

//as much as possible try to create stateless widgets,
//variables use final vars
//const connstructors

void main() => runApp(ListApp());

// tree  shaking in flutter -- winter leaves ffall-- state changes -- wigets need to be dropped and new ones to be create

class ListApp extends StatelessWidget {
  const ListApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    title: "lists demo",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("lists demo"),
        ),
        body: ListView(
         scrollDirection: Axis.horizontal,
          children:  <Widget>[
            Container(width: 160,
                child: ListTile(leading: Icon(Icons.photo_album),title: Text("album"))),
            Container(width: 160,
                child: ListTile(leading: Icon(Icons.school),title: Text("school"),)),
            Container(width: 160,
                child: ListTile(leading: Icon(Icons.car_rental),title: Text("car"),)),
          ],
        ),
      ),
    );
  }
}


