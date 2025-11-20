class ParticipantModel {
  final int? id;
  final int? sportId;
  final int? countryId;
  final int? venueId;
  final String? gender;
  final String? name;
  final String? shortCode;
  final String? imagePath;
  final int? founded;
  final String? type;
  final bool? placeholder;
  final DateTime? lastPlayedAt;
  final ParticipantMeta meta;

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
    id: json["id"],
    sportId: json["sport_id"],
    countryId: json["country_id"],
    venueId: json["venue_id"],
    gender: json["gender"],
    name: json["name"],
    shortCode: json["short_code"],
    imagePath: json["image_path"],
    founded: json["founded"],
    type: json["type"],
    placeholder: json["placeholder"],
    lastPlayedAt: DateTime.parse(json["last_played_at"]),
    meta: ParticipantMeta.fromJson(json["meta"]),
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
    "last_played_at": lastPlayedAt?.toIso8601String(),
    "meta": meta.toJson(),
  };
}


class ParticipantMeta {
  final String? location;
  final bool? winner;
  final int? position;

  ParticipantMeta({
    required this.location,
    required this.winner,
    required this.position,
  });

  factory ParticipantMeta.fromJson(Map<String, dynamic> json) =>
      ParticipantMeta(
        location: json["location"],
        winner: json["winner"],
        position: json["position"],
      );

  Map<String, dynamic> toJson() => {
    "location": location,
    "winner": winner,
    "position": position,
  };
}
