import 'package:betlyn/infrastructure/models/sportmonks/league_model.dart';
import 'package:betlyn/infrastructure/models/sportmonks/participant_model.dart';
import 'package:betlyn/infrastructure/models/sportmonks/score_model.dart';
import 'package:betlyn/infrastructure/models/sportmonks/state_model.dart';
import 'package:betlyn/infrastructure/models/sportmonks/venue_model.dart';

class FixtureModel {
  final int? id;
  final int? sportId;
  final int? leagueId;
  final int? seasonId;
  final int stageId;
  final int? groupId;
  final int? aggregateId;
  final int? roundId;
  final int? stateId;
  final int? venueId;
  final String? name;
  final DateTime? startingAt;
  final String? resultInfo;
  final String? leg;
  final String? details;
  final int? length;
  final bool? placeholder;
  final bool? hasOdds;
  final bool? hasPremiumOdds;
  final int? startingAtTimestamp;
  final StateModel state;
  final List<ParticipantModel> participants;
  final LeagueModel league;
  final VenueModel venue;
  final List<ScoreModel> scores;

  FixtureModel({
    required this.id,
    required this.sportId,
    required this.leagueId,
    required this.seasonId,
    required this.stageId,
    required this.groupId,
    required this.aggregateId,
    required this.roundId,
    required this.stateId,
    required this.venueId,
    required this.name,
    required this.startingAt,
    required this.resultInfo,
    required this.leg,
    required this.details,
    required this.length,
    required this.placeholder,
    required this.hasOdds,
    required this.hasPremiumOdds,
    required this.startingAtTimestamp,
    required this.state,
    required this.participants,
    required this.league,
    required this.venue,
    required this.scores,
  });

  factory FixtureModel.fromJson(Map<String, dynamic> json) => FixtureModel(
    id: json["id"],
    sportId: json["sport_id"],
    leagueId: json["league_id"],
    seasonId: json["season_id"],
    stageId: json["stage_id"],
    groupId: json["group_id"],
    aggregateId: json["aggregate_id"],
    roundId: json["round_id"],
    stateId: json["state_id"],
    venueId: json["venue_id"],
    name: json["name"],
    startingAt: DateTime.parse(json["starting_at"]),
    resultInfo: json["result_info"],
    leg: json["leg"],
    details: json["details"] ?? '',
    length: json["length"],
    placeholder: json["placeholder"],
    hasOdds: json["has_odds"],
    hasPremiumOdds: json["has_premium_odds"],
    startingAtTimestamp: json["starting_at_timestamp"],
    state: StateModel.fromJson(json["state"]),
    participants: List<ParticipantModel>.from(
      json["participants"].map((x) => ParticipantModel.fromJson(x)),
    ),
    league: LeagueModel.fromJson(json["league"]),
    venue: VenueModel.fromJson(json["venue"]),
    scores: List<ScoreModel>.from(json["scores"].map((x) => ScoreModel.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "sport_id": sportId,
    "league_id": leagueId,
    "season_id": seasonId,
    "stage_id": stageId,
    "group_id": groupId,
    "aggregate_id": aggregateId,
    "round_id": roundId,
    "state_id": stateId,
    "venue_id": venueId,
    "name": name,
    "starting_at": startingAt?.toIso8601String(),
    "result_info": resultInfo,
    "leg": leg,
    "details": details,
    "length": length,
    "placeholder": placeholder,
    "has_odds": hasOdds,
    "has_premium_odds": hasPremiumOdds,
    "starting_at_timestamp": startingAtTimestamp,
    "state": state.toJson(),
    "participants": List<dynamic>.from(participants.map((x) => x.toJson())),
    "league": league.toJson(),
    "venue": venue.toJson(),
    "score": List<dynamic>.from(scores.map((x) => x.toJson())),
  };
}
