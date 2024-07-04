import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:siemens/webservices/album.dart';

//what are generics
 Future<Album> getAlbum() async{
   final response = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/albums/1"));
   if(response.statusCode == 200) {
     print(response.body);
   }
   return Album.fromJson(jsonDecode(response.body));

 }

 void main(){
   runApp(MaterialApp(
     home: WebServiceApp(),
   ));
 }

 class WebServiceApp extends StatefulWidget {
   const WebServiceApp({super.key});



  @override
  State<WebServiceApp> createState() => _WebServiceAppState();
}

class _WebServiceAppState extends State<WebServiceApp> {
   @override
  void initState() {
    // TODO: implement initState
    super.initState();
    album = getAlbum() ;
  }

  late Future<Album> album;

  @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(title: const Text('get json'),),
       body: FutureBuilder<Album>(future: album,builder: (context,snapshot){
         //return a widget
         //show a circular progress bar while its fetchinng the data
         //after the data has been fetch show a text widget with the data
         if(snapshot.hasData){ return Text(snapshot.data!.title);}
         //else show text widget with error message
         else if (snapshot.hasError){return Text('$snapshot.error');}
         return const CircularProgressIndicator();
       }),
       floatingActionButton: FloatingActionButton(child: Icon(Icons.get_app), onPressed: (){
         var response =  getAlbum();
        // print(response);
       },),
     );
   }
}
