import 'package:betlyn/infrastructure/models/sportmonks/season_model.dart';

class SeasonResponse {
    final List<SeasonModel> data;

    SeasonResponse({
        required this.data,
    });

    factory SeasonResponse.fromJson(Map<String, dynamic> json) => SeasonResponse(
        data: List<SeasonModel>.from(json["data"].map((x) => SeasonModel.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
    };
}
