import 'package:flutter/material.dart';

void main() {
  runApp(
    Center(
      child: Text("hello world",
        textDirection: TextDirection.ltr,
      style: TextStyle(fontSize: 25.0,color: Colors.green),),
    )
  );
}
