// presentation/widgets/fixtures/team_row.dart

import 'package:flutter/material.dart';

class TeamRow extends StatelessWidget {
  final String name;
  final String imagePath;

  const TeamRow({
    super.key,
    required this.name,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Row(
      spacing: 10,
      children: [
        Image.network(imagePath, width: 30, height: 30),
        Expanded(
          child: Text(
            name,
            style: textTheme.titleMedium,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
