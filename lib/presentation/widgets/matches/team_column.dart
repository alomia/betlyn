import 'package:flutter/material.dart';

class TeamColumn extends StatelessWidget {
  final String imagePath;
  final String name;
  final double width;

  const TeamColumn({super.key, required this.imagePath, required this.name, this.width = 35.0});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      children: [
        Image.network(imagePath, width: width),
        SizedBox(height: 5.0),
        Text(name, style: textTheme.bodyLarge!.copyWith(
          fontWeight: FontWeight.bold
        ),),
      ],
    );
  }
}
