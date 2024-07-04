import 'package:flutter/material.dart';
import 'package:siemens/database/Dog.dart';
import 'package:siemens/database/dogs_dao.dart';


void main() => runApp(
  MaterialApp(home: DogApp(),)
);


class DogApp extends StatelessWidget {
  const DogApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('dogs demo'),),
      body: ElevatedButton(
        onPressed: (){
         var dogDao = DogsDao();
         dogDao.createDog(Dog(id: 12, name: 'dauberman', age: 2));
        },
        child: Text('insert')
      ),
    );
  }
}
