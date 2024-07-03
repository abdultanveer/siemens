import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: HomeScreen(),
  ));
}


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('get data from child screen'),),
      body: SelectionButton(),
    );
  }
}

class SelectionButton extends StatefulWidget {
  const SelectionButton({super.key});

  @override
  State<SelectionButton> createState() => _SelectionButtonState();
}

class _SelectionButtonState extends State<SelectionButton> {

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){
      returnDataParentScreen(context);
    }, child: Text('select a button to return the data'));
  }

  Future<void> returnDataParentScreen(BuildContext context) async {
    final result = await Navigator.push(context, MaterialPageRoute(builder: (context){ //await im wwaiting for the user to click agreed/cancel button
      return const SelectionScreen();
    }));

    if(!context.mounted) return;  //hey if this screen/widget is visible there's no point to show the retreived data
      ScaffoldMessenger.of(context)
        ..removeCurrentSnackBar()
        ..showSnackBar(SnackBar(content: Text('$result')));
    }
  }



class SelectionScreen extends StatelessWidget {
  const SelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('select a button'),),
      body: Column(
        children: [
          Text('Terms and conndition'),
          ElevatedButton(child: Text('agreed terms'),onPressed: (){
            Navigator.pop(context,'i have agreed');
          },),
          ElevatedButton(child: Text('cancel'),onPressed: (){
            Navigator.pop(context,'i dont agree');

          },),

        ],
      ),
    );
  }
}


