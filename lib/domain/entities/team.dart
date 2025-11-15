class Team {
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

  Team({
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
  });
}
