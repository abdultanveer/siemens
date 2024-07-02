import 'package:flutter/material.dart';

class DescriptionSection extends StatelessWidget {
  const DescriptionSection({super.key, required this.description});

  final String description;
  @override
  Widget build(BuildContext context) {
    return   const Padding(
      padding: const EdgeInsets.all(32.0),
      child: Text(
          "this is abdout savandurga hills located in bangalore, one of the biggest monnolithic rock around 35kms from city",
          softWrap: true,
      ),
    );
  }
}
