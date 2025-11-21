import 'package:betlyn/config/helpers/date_formatter.dart';
import 'package:betlyn/domain/entities/fixture.dart';
import 'package:betlyn/presentation/widgets/matches/team_column.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class MatchScoreBoard extends StatelessWidget {
  final Fixture match;

  const MatchScoreBoard({super.key, required this.match});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
      child: Row(
        children: [
          TeamColumn(
            imagePath: match.home.imagePath,
            name: match.home.shortCode,
            width: 50.0,
          ),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              spacing: 15.0,
              children: [
                Text(
                  DateFormatter.toHumanReadable(match.startingAt),
                  style: textTheme.bodyLarge!.copyWith(
                    fontWeight: FontWeight.w300,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,

                  children: [
                    Text(
                      match.homeScore.goals.toString(),
                      style: textTheme.headlineMedium,
                    ),
                    Chip(
                      label: Text(
                        match.state.name,
                        style: textTheme.bodyLarge!.copyWith(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Text(
                      match.awayScore.goals.toString(),
                      style: textTheme.headlineMedium,
                    ),
                  ],
                ),
                Icon(
                  PhosphorIconsRegular.soccerBall,
                  color: Colors.grey.shade300,
                ),
              ],
            ),
          ),

          TeamColumn(
            imagePath: match.away.imagePath,
            name: match.away.shortCode,
            width: 50.0,
          ),
        ],
      ),
    );
  }
}
