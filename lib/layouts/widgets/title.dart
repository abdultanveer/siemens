import 'package:flutter/material.dart';

class TitleSection extends StatelessWidget {
   TitleSection({
    super.key,
    required this.name,
    required this.location
  });

  final String name;
  final String location;

  @override
  Widget build(BuildContext context) {
      return Row(
        children: [
          Expanded(
            child: Column(
            children: [
              Text('$name'),
              Text('$location')
            ],
                ),
          ),
          Icon(Icons.star,color: Colors.red[500],),
          Text('42')
        ],
      );
  }
}
