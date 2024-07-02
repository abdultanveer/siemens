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
    //rows' mainn axis is x-axis and cross axis is y axis
      return Row(

        children: [
          Expanded(
            child: Column(
              //columns' mainn axis is y-axis and cross axis is x axis
           crossAxisAlignment: CrossAxisAlignment.start,
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
