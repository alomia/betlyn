import 'package:betlyn/domain/entities/league.dart';

class Season {
  final int id;
  final int sportId;
  final int leagueId;
  final int tieBreakerRuleId;
  final String name;
  final bool finished;
  final bool pending;
  final bool isCurrent;
  final String startingAt;
  final String endingAt;
  final DateTime standingsRecalculatedAt;
  final bool gamesInCurrentWeek;
  final League league;

  Season({
    required this.id,
    required this.sportId,
    required this.leagueId,
    required this.tieBreakerRuleId,
    required this.name,
    required this.finished,
    required this.pending,
    required this.isCurrent,
    required this.startingAt,
    required this.endingAt,
    required this.standingsRecalculatedAt,
    required this.gamesInCurrentWeek,
    required this.league,
  });
}
