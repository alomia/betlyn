import 'package:betlyn/presentation/widgets/matches/league_matches_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MatchesView extends ConsumerWidget {
  const MatchesView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Partidos",
          style: textTheme.headlineLarge!.copyWith(
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: ListView(
          children: [
            LeagueMatchesSection(leagueId: 8),
            SizedBox(height: 20.0),
            LeagueMatchesSection(leagueId: 564),
            SizedBox(height: 20.0),
            LeagueMatchesSection(leagueId: 82),
            SizedBox(height: 20.0),
            LeagueMatchesSection(leagueId: 301),
            SizedBox(height: 20.0),
            LeagueMatchesSection(leagueId: 384),
          ],
        ),
      ),
    );
  }
}
