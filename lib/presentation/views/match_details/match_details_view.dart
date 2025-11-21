import 'package:betlyn/presentation/providers/predictions/match_prediction/match_prediction_provider.dart';
import 'package:betlyn/presentation/providers/sports/match_provider/match_provider.dart';
import 'package:betlyn/presentation/widgets/league_header.dart';
import 'package:betlyn/presentation/widgets/match_score_board.dart';
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
                    icon: Icon(
                      PhosphorIconsRegular.sparkle,
                      color: Colors.black,
                    ),
                    label: Text(
                      'Predecir',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ),

              prediction.isNotEmpty
                  ? Column(
                      children: [
                        Divider(height: 30.0),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Card(
                            elevation: 0,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10.0,
                                vertical: 10.0,
                              ),
                              child: Text(prediction),
                            ),
                          ),
                        ),
                      ],
                    )
                  : SizedBox(),
            ],
          ),
        );
      },
    );
  }
}
