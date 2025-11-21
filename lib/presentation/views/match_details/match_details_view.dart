import 'package:animate_do/animate_do.dart';
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
        final predictionState = predictionMap[match.id];
        final isLoading = predictionState?.isLoading ?? false;

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
                    onPressed: isLoading
                        ? null
                        : () {
                            ref
                                .read(matchPredictionProvider.notifier)
                                .predict(match);
                          },
                    icon: isLoading
                        ? SpinPerfect(
                            duration: Duration(seconds: 2),
                            infinite: true,
                            child: Icon(
                              PhosphorIconsRegular.spinnerGap,
                              size: 30,
                            ),
                          )
                        : Icon(
                            PhosphorIconsRegular.sparkle,
                            color: Colors.black,
                            size: 27.0,
                          ),
                    label: Text(
                      isLoading ? '' : 'Predecir',
                      style: TextTheme.of(context).bodyLarge!.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),

              predictionState?.prediction.isNotEmpty == true
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
                              child: Text(
                                predictionState!.prediction,
                                style: Theme.of(context).textTheme.bodyLarge,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  : Column(
                      children: [
                        SizedBox(height: 210.0),
                        Icon(
                          PhosphorIconsRegular.clover,
                          size: 200.0,
                          color: Colors.grey.shade900,
                        ),
                      ],
                    ),
            ],
          ),
        );
      },
    );
  }
}
