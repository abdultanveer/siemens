import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Scaffold(
      body: ParentWidget(),
    ),
  ));
}


class ParentWidget extends StatefulWidget {
  const ParentWidget({super.key});

  @override
  State<ParentWidget> createState() => _ParentWidgetState();
}

class _ParentWidgetState extends State<ParentWidget> {
  bool isActive = false;
  void handleTapboxchange(bool newValue){
    setState(() {
      isActive = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TapBoxB(active: isActive,onChanged: handleTapboxchange,);
  }
}
//------------------------------------------
class TapBoxB extends StatelessWidget {

  const TapBoxB({super.key, required this.active, required this.onChanged});

final bool active;
final ValueChanged<bool> onChanged;

void handleTap(){
  onChanged(!active);
}

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){ handleTap();},
      child: Container(
        height: 200.0,
          width: 200.0,
          decoration: BoxDecoration(
            color: active ? Colors.green : Colors.grey
          ),
          child: Center(child: Text(active ? 'Active':'InActive'))),
    );
  }
}

