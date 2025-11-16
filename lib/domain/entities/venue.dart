class Venue {
  final int id;
  final int countryId;
  final int cityId;
  final String name;
  final String address;
  final String zipcode;
  final String latitude;
  final String longitude;
  final int capacity;
  final String imagePath;
  final String cityName;
  final String surface;
  final bool nationalTeam;

  Venue({
    required this.id,
    required this.countryId,
    required this.cityId,
    required this.name,
    required this.address,
    required this.zipcode,
    required this.latitude,
    required this.longitude,
    required this.capacity,
    required this.imagePath,
    required this.cityName,
    required this.surface,
    required this.nationalTeam,
  });
}
