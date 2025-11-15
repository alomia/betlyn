import 'package:betlyn/infrastructure/models/sportmonks/league_model.dart';
import 'package:betlyn/infrastructure/models/sportmonks/participant_model.dart';
import 'package:betlyn/infrastructure/models/sportmonks/venue_model.dart';

class FixtureModel {
    final int id;
    final int sportId;
    final int leagueId;
    final int seasonId;
    final int stageId;
    final int groupId;
    final int aggregateId;
    final int roundId;
    final int stateId;
    final int venueId;
    final String name;
    final DateTime startingAt;
    final String resultInfo;
    final String leg;
    final String details;
    final int length;
    final bool placeholder;
    final bool hasOdds;
    final bool hasPremiumOdds;
    final int startingAtTimestamp;
    final List<ParticipantModel> participants;
    final LeagueModel league;
    final VenueModel venue;

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
        required this.participants,
        required this.league,
        required this.venue,
    });

    factory FixtureModel.fromJson(Map<String, dynamic> json) => FixtureModel(
        id: json["id"] ?? 0,
        sportId: json["sport_id"] ?? 0,
        leagueId: json["league_id"] ?? 0,
        seasonId: json["season_id"] ?? 0,
        stageId: json["stage_id"] ?? 0,
        groupId: json["group_id"] ?? 0,
        aggregateId: json["aggregate_id"] ?? 0,
        roundId: json["round_id"] ?? 0,
        stateId: json["state_id"] ?? 0,
        venueId: json["venue_id"] ?? 0,
        name: json["name"] ?? '',
        startingAt: DateTime.parse(json["starting_at"]),
        resultInfo: json["result_info"] ?? '',
        leg: json["leg"] ?? '',
        details: json["details"] ?? '',
        length: json["length"] ?? 0,
        placeholder: json["placeholder"] ?? false,
        hasOdds: json["has_odds"] ?? false,
        hasPremiumOdds: json["has_premium_odds"] ?? false,
        startingAtTimestamp: json["starting_at_timestamp"] ?? 0,
        participants: List<ParticipantModel>.from(json["participants"].map((x) => ParticipantModel.fromJson(x))),
        league: LeagueModel.fromJson(json["league"]),
        venue: VenueModel.fromJson(json["venue"]),
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
        "starting_at": startingAt.toIso8601String(),
        "result_info": resultInfo,
        "leg": leg,
        "details": details,
        "length": length,
        "placeholder": placeholder,
        "has_odds": hasOdds,
        "has_premium_odds": hasPremiumOdds,
        "starting_at_timestamp": startingAtTimestamp,
        "participants": List<dynamic>.from(participants.map((x) => x.toJson())),
        "league": league.toJson(),
        "venue": venue.toJson(),
    };
}
