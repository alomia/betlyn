class ParticipantModel {
    final int id;
    final int sportId;
    final int countryId;
    final int venueId;
    final String gender;
    final String name;
    final String shortCode;
    final String imagePath;
    final int founded;
    final String type;
    final bool placeholder;
    final DateTime lastPlayedAt;
    final MetaModel meta;

    ParticipantModel({
        required this.id,
        required this.sportId,
        required this.countryId,
        required this.venueId,
        required this.gender,
        required this.name,
        required this.shortCode,
        required this.imagePath,
        required this.founded,
        required this.type,
        required this.placeholder,
        required this.lastPlayedAt,
        required this.meta,
    });

    factory ParticipantModel.fromJson(Map<String, dynamic> json) => ParticipantModel(
        id: json["id"] ?? 0,
        sportId: json["sport_id"] ?? 0,
        countryId: json["country_id"] ?? 0,
        venueId: json["venue_id"] ?? 0,
        gender: json["gender"] ?? '',
        name: json["name"] ?? '',
        shortCode: json["short_code"] ?? '',
        imagePath: json["image_path"] ?? '',
        founded: json["founded"] ?? 0,
        type: json["type"] ?? '',
        placeholder: json["placeholder"] ?? false,
        lastPlayedAt: DateTime.parse(json["last_played_at"]),
        meta: MetaModel.fromJson(json["meta"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "sport_id": sportId,
        "country_id": countryId,
        "venue_id": venueId,
        "gender": gender,
        "name": name,
        "short_code": shortCode,
        "image_path": imagePath,
        "founded": founded,
        "type": type,
        "placeholder": placeholder,
        "last_played_at": lastPlayedAt.toIso8601String(),
        "meta": meta.toJson(),
    };
}

class MetaModel {
    final String location;
    final bool winner;
    final int position;

    MetaModel({
        required this.location,
        required this.winner,
        required this.position,
    });

    factory MetaModel.fromJson(Map<String, dynamic> json) => MetaModel(
        location: json["location"] ?? '',
        winner: json["winner"] ?? false,
        position: json["position"] ?? 0,
    );

    Map<String, dynamic> toJson() => {
        "location": location,
        "winner": winner,
        "position": position,
    };
}
