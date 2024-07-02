import 'package:flutter/material.dart';

class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    final Color color1 = Theme.of(context).primaryColor;
    return const ButtonWithText(color: Colors.cyan, iconData: Icons.call, label: "CALL");
  }
}

class ButtonWithText extends StatelessWidget {
  const ButtonWithText({
    super.key,
    required this.color,
    required this.iconData,
    required this.label
  });

  final Color color;
  final IconData iconData;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(iconData,color: color,),
        Text('$label'),
      ],
    );
  }
}

