class LeagueModel {
  final int? id;
  final int? sportId;
  final int? countryId;
  final String? name;
  final bool? active;
  final String? shortCode;
  final String? imagePath;
  final String? type;
  final String? subType;
  final DateTime? lastPlayedAt;
  final int? category;
  final bool? hasJerseys;

  LeagueModel({
    required this.id,
    required this.sportId,
    required this.countryId,
    required this.name,
    required this.active,
    required this.shortCode,
    required this.imagePath,
    required this.type,
    required this.subType,
    required this.lastPlayedAt,
    required this.category,
    required this.hasJerseys,
  });

  factory LeagueModel.fromJson(Map<String, dynamic> json) => LeagueModel(
    id: json["id"],
    sportId: json["sport_id"],
    countryId: json["country_id"],
    name: json["name"],
    active: json["active"],
    shortCode: json["short_code"],
    imagePath: json["image_path"],
    type: json["type"],
    subType: json["sub_type"],
    lastPlayedAt: DateTime.parse(json["last_played_at"]),
    category: json["category"],
    hasJerseys: json["has_jerseys"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "sport_id": sportId,
    "country_id": countryId,
    "name": name,
    "active": active,
    "short_code": shortCode,
    "image_path": imagePath,
    "type": type,
    "sub_type": subType,
    "last_played_at": lastPlayedAt?.toIso8601String(),
    "category": category,
    "has_jerseys": hasJerseys,
  };
}
