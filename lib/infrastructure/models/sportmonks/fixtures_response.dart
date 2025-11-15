import 'package:betlyn/infrastructure/models/sportmonks/fixture_model.dart';

class FixturesResponse {
    final List<FixtureModel> data;
    

    FixturesResponse({
        required this.data,
    });

    factory FixturesResponse.fromJson(Map<String, dynamic> json) => FixturesResponse(
        data: List<FixtureModel>.from(json["data"].map((x) => FixtureModel.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
    };
}
