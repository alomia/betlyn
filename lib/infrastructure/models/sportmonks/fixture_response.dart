import 'package:betlyn/infrastructure/models/sportmonks/fixture_model.dart';

class FixtureResponse {
  final List<FixtureModel> fixtures;

  FixtureResponse({required this.fixtures});

  factory FixtureResponse.fromJson(Map<String, dynamic> json) =>
      FixtureResponse(
        fixtures: List<FixtureModel>.from(
          json["data"].map((x) => FixtureModel.fromJson(x)),
        ),
      );

  Map<String, dynamic> toJson() => {
    "data": List<dynamic>.from(fixtures.map((x) => x.toJson())),
  };
}
