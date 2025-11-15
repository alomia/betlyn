import 'package:betlyn/infrastructure/models/sportmonks/league_model.dart';

class AllLeaguesResponse {
  final List<LeagueModel> data;

  AllLeaguesResponse({required this.data});

  factory AllLeaguesResponse.fromJson(Map<String, dynamic> json) =>
      AllLeaguesResponse(
        data: List<LeagueModel>.from(
          json["data"].map((x) => LeagueModel.fromJson(x)),
        ),
      );

  Map<String, dynamic> toJson() => {
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
  };
}
