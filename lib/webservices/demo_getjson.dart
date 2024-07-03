import 'dart:async';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

//what are generics
 Future<http.Response> getAlbum() async{
   final response = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/albums/1"));
   print(response.body);
   return response;
 }

 void main(){
   runApp(MaterialApp(
     home: WebServiceApp(),
   ));
 }

 class WebServiceApp extends StatelessWidget {
   const WebServiceApp({super.key});

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(title: const Text('get json'),),
       body: Text('the json'),
       floatingActionButton: FloatingActionButton(child: Icon(Icons.get_app), onPressed: (){
         var response =  getAlbum();
        // print(response);
       },),
     );
   }
 }
