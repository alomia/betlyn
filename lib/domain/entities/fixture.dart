
import 'package:betlyn/domain/entities/league.dart';
import 'package:betlyn/domain/entities/team.dart';

class Fixture {
  final int id;
  final int leagueId;
  final String name;
  final DateTime startingAt;
  final Team home;
  final Team away;
  final League league;

  Fixture({
    required this.id,
    required this.leagueId,
    required this.name,
    required this.startingAt,
    required this.home,
    required this.away,
    required this.league
  });
}
