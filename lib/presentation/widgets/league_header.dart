import 'package:flutter/material.dart';

class LeagueHeader extends StatelessWidget {
  final String imagePath;
  final String title;

  const LeagueHeader({super.key, required this.imagePath, required this.title});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 35.0,
            height: 35.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Image.network(imagePath, width: 40),
            ),
          ),
          SizedBox(width: 10.0),
          Text(
            title,
            style: textTheme.titleLarge!.copyWith(fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
