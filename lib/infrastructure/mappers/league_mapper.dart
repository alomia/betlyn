import 'package:betlyn/domain/entities/entities.dart';
import 'package:betlyn/infrastructure/models/sportmonks/league_model.dart';

class LeagueMapper {
  static League toEntity(LeagueModel league) => League(
    id: league.id ?? 0,
    sportId: league.sportId ?? 0,
    countryId: league.countryId ?? 0,
    name: league.name ?? '',
    shortCode: league.shortCode ?? '',
    imagePath: league.imagePath ?? '',
    type: league.type ?? '',
  );
}
