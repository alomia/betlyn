import 'package:animate_do/animate_do.dart';
import 'package:betlyn/presentation/providers/sports/matches_provider/matches_provider.dart';
import 'package:betlyn/presentation/providers/sports/seasons_provider/seasons_provider.dart';
import 'package:betlyn/presentation/widgets/league_header.dart';
import 'package:betlyn/presentation/widgets/matches/match_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LeagueMatchesSection extends ConsumerWidget {
  final int leagueId;

  const LeagueMatchesSection({super.key, required this.leagueId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final seasonAsync = ref.watch(seasonProvider(leagueId: leagueId));

    return seasonAsync.when(
      error: (error, stackTrace) => Text(error.toString()),
      loading: () => Text('Cargando Season'),
      data: (season) {
        final matchesAsync = ref.watch(matchesProvider(leagueId: season.league.id));

        return FadeIn(
          child: matchesAsync.when(
            error: (error, stackTrace) => Text(error.toString()),
            loading: () => Text('Cargando Matches'),
            data: (matches) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  LeagueHeader(
                    imagePath: season.league.imagePath,
                    title: season.league.name,
                  ),
          
                  ListView.separated(
                    separatorBuilder: (context, index) => SizedBox(height: 10.0),
                    itemCount: matches.length,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      final match = matches[index];
                      return MatchCard(match: match);
                    },
                  ),
                ],
              );
            },
          ),
        );
      },
    );
  }
}
