import 'package:betlyn/domain/entities/league.dart';
import 'package:betlyn/domain/entities/score.dart';
import 'package:betlyn/domain/entities/state.dart';
import 'package:betlyn/domain/entities/team.dart';
import 'package:betlyn/domain/entities/venue.dart';

class Fixture {
  final int id;
  final int leagueId;
  final String name;
  final DateTime startingAt;
  final State state;
  final Team home;
  final Team away;
  final League league;
  final Venue venue;
  final Score homeScore;
  final Score awayScore;

  Fixture({
    required this.id,
    required this.leagueId,
    required this.name,
    required this.startingAt,
    required this.state,
    required this.home,
    required this.away,
    required this.league,
    required this.venue,
    required this.homeScore,
    required this.awayScore,
  });
}
