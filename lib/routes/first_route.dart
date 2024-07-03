import 'package:flutter/material.dart';
import 'package:siemens/routes/second_route.dart';


void main(){
  runApp(const MaterialApp(
    home: FirstRoute(),
  ));
}


class FirstRoute extends StatelessWidget {
  const FirstRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('first route'),
      ),
      body: ElevatedButton(child: Text('go to second route'),onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return SecondRoute();
        }));
      },),
    );
  }
}
