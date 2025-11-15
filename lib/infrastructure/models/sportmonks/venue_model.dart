class VenueModel {
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

    VenueModel({
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

    factory VenueModel.fromJson(Map<String, dynamic> json) => VenueModel(
        id: json["id"] ?? 0,
        countryId: json["country_id"] ?? 0,
        cityId: json["city_id"] ?? 0,
        name: json["name"] ?? '',
        address: json["address"] ?? '',
        zipcode: json["zipcode"] ?? '',
        latitude: json["latitude"] ?? '',
        longitude: json["longitude"] ?? '',
        capacity: json["capacity"] ?? 0,
        imagePath: json["image_path"] ?? '',
        cityName: json["city_name"] ?? '',
        surface: json["surface"] ?? '',
        nationalTeam: json["national_team"] ?? false,
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "country_id": countryId,
        "city_id": cityId,
        "name": name,
        "address": address,
        "zipcode": zipcode,
        "latitude": latitude,
        "longitude": longitude,
        "capacity": capacity,
        "image_path": imagePath,
        "city_name": cityName,
        "surface": surface,
        "national_team": nationalTeam,
    };
}
