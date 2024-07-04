import 'package:flutter/material.dart';

void  main() => runApp(StateMgmtApp());

class StateMgmtApp extends StatelessWidget {
  const StateMgmtApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'state mgmt',
      home: Scaffold(
        appBar: AppBar(title: Text('demo state mgmt',)),
        body: TapBoxA(),

      ),
    );
  }
}

class TapBoxA extends StatefulWidget {
  const TapBoxA({super.key});

  @override
  State<TapBoxA> createState() => _TapBoxAState();
}

class _TapBoxAState extends State<TapBoxA> {
  bool _isActive = false;

  void _handleTap(){
    setState(() {
      _isActive =! _isActive;
    });
  }

  @override
  Widget build(BuildContext context) {
    return   GestureDetector(
      onTap: (){_handleTap();},
      child: Container(
        width: 200.0,
        height: 200.0,
        child: Text(_isActive ? 'Active':'InActive' ,style: const TextStyle(fontSize: 32.0,color: Colors.white),),
        decoration: BoxDecoration(
          color: _isActive ? Colors.green : Colors.grey
        ),
      ),
    );
  }
}



