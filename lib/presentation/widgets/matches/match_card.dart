import 'package:betlyn/config/helpers/string_helpers.dart';
import 'package:betlyn/domain/entities/fixture.dart';
import 'package:betlyn/presentation/widgets/matches/team_column.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MatchCard extends StatelessWidget {
  final Fixture match;

  const MatchCard({super.key, required this.match});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return GestureDetector(
      onTap: () => context.push('/match/${match.id}'),
      child: Card(
        elevation: 0,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
          child: Row(
            children: [
              TeamColumn(
                imagePath: match.home.imagePath,
                name: match.home.shortCode.isEmpty
                    ? generateThreeLetterCode(match.home.name)
                    : match.home.shortCode,
              ),
      
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: 15.0,
                  children: [
                    Text(
                      match.league.name,
                      style: textTheme.bodyMedium!.copyWith(
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      
                      children: [
                        Text(match.homeScore.goals.toString(), style: textTheme.headlineMedium),
                        Text(
                          match.state.state.toUpperCase(),
                          style: textTheme.bodyLarge!.copyWith(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(match.awayScore.goals.toString(), style: textTheme.headlineMedium),
                      ],
                    ),
                    Text(
                      match.venue.name,
                      style: textTheme.bodyMedium!.copyWith(
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              ),
      
              TeamColumn(
                imagePath: match.away.imagePath,
                name: match.away.shortCode.isEmpty
                    ? generateThreeLetterCode(match.away.name)
                    : match.away.shortCode,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
