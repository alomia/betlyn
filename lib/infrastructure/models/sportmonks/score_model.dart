class ScoreModel {
    final int? id;
    final int? fixtureId;
    final int? typeId;
    final int? participantId;
    final ScoreDetail score;
    final String? description;

    ScoreModel({
        required this.id,
        required this.fixtureId,
        required this.typeId,
        required this.participantId,
        required this.score,
        required this.description,
    });

    factory ScoreModel.fromJson(Map<String, dynamic> json) => ScoreModel(
        id: json["id"],
        fixtureId: json["fixture_id"],
        typeId: json["type_id"],
        participantId: json["participant_id"],
        score: ScoreDetail.fromJson(json["score"]),
        description: json["description"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "fixture_id": fixtureId,
        "type_id": typeId,
        "participant_id": participantId,
        "score": score.toJson(),
        "description": description,
    };
}


class ScoreDetail {
    final int? goals;
    final String? participant;

    ScoreDetail({
        required this.goals,
        required this.participant,
    });

    factory ScoreDetail.fromJson(Map<String, dynamic> json) => ScoreDetail(
        goals: json["goals"],
        participant: json["participant"],
    );

    Map<String, dynamic> toJson() => {
        "goals": goals,
        "participant": participant,
    };
}
