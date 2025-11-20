import 'package:betlyn/config/helpers/helpers.dart';
import 'package:betlyn/domain/entities/entities.dart';
import 'package:betlyn/presentation/providers/predictions/match_prediction/match_prediction_provider.dart';
import 'package:betlyn/presentation/providers/sports/match_provider/match_provider.dart';
import 'package:betlyn/presentation/widgets/league_header.dart';
import 'package:betlyn/presentation/widgets/matches/team_column.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class MatchDetailsView extends ConsumerWidget {
  final String matchId;

  const MatchDetailsView({super.key, required this.matchId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final matchAsync = ref.watch(matchProvider(fixtureId: int.parse(matchId)));
    final predictionMap = ref.watch(matchPredictionProvider);

    return matchAsync.when(
      error: (error, stackTrace) => Center(child: Text(error.toString())),
      loading: () => Center(child: Text('Cargando')),
      data: (match) {
        final prediction = predictionMap[match.id] ?? '';

        return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: LeagueHeader(
            imagePath: match.league.imagePath,
            title: match.league.name,
          ),
        ),
        body: Column(
          children: [
            MatchScoreBoard(match: match),
      
            Divider(height: 30.0),
      
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: SizedBox(
                width: double.infinity,
                height: 50.0,
                child: FilledButton.icon(
                  style: FilledButton.styleFrom(
                    backgroundColor: Colors.grey.shade100,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onPressed: () {
                    ref.read(matchPredictionProvider.notifier).predict(match);
                  },
                  icon: Icon(PhosphorIconsRegular.sparkle, color: Colors.black,),
                  label: Text('Predecir', style: TextStyle(color: Colors.black),),
                ),
              ),
            ),
      
            prediction.isNotEmpty ? Text(prediction) : SizedBox()
            
          ],
        ),
      );
      },
    );
  }
}

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
