import 'package:betlyn/domain/entities/venue.dart';
import 'package:betlyn/infrastructure/models/sportmonks/venue_model.dart';

class VenueMapper {
  static Venue toEntity(VenueModel venue) => Venue(
    id: venue.id,
    countryId: venue.countryId,
    cityId: venue.cityId,
    name: venue.name,
    address: venue.address,
    zipcode: venue.zipcode,
    latitude: venue.latitude,
    longitude: venue.longitude,
    capacity: venue.capacity,
    imagePath: venue.imagePath,
    cityName: venue.cityName,
    surface: venue.surface,
    nationalTeam: venue.nationalTeam,
  );
}
