import 'package:betlyn/infrastructure/models/sportmonks/league_model.dart';

class SeasonModel {
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
    final LeagueModel league;

    SeasonModel({
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

    factory SeasonModel.fromJson(Map<String, dynamic> json) => SeasonModel(
        id: json["id"],
        sportId: json["sport_id"],
        leagueId: json["league_id"],
        tieBreakerRuleId: json["tie_breaker_rule_id"],
        name: json["name"],
        finished: json["finished"],
        pending: json["pending"],
        isCurrent: json["is_current"],
        startingAt: json["starting_at"],
        endingAt: json["ending_at"],
        standingsRecalculatedAt: DateTime.parse(json["standings_recalculated_at"]),
        gamesInCurrentWeek: json["games_in_current_week"],
        league: LeagueModel.fromJson(json["league"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "sport_id": sportId,
        "league_id": leagueId,
        "tie_breaker_rule_id": tieBreakerRuleId,
        "name": name,
        "finished": finished,
        "pending": pending,
        "is_current": isCurrent,
        "starting_at": startingAt,
        "ending_at": endingAt,
        "standings_recalculated_at": standingsRecalculatedAt.toIso8601String(),
        "games_in_current_week": gamesInCurrentWeek,
        "league": league.toJson(),
    };
}
