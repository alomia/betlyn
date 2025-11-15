class League {
  final int id;
  final int sportId;
  final int countryId;
  final String name;
  final String shortCode;
  final String imagePath;
  final String type;

  League({
    required this.id,
    required this.sportId,
    required this.countryId,
    required this.name,
    required this.shortCode,
    required this.imagePath,
    required this.type,
  });
}
