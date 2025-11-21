import 'package:betlyn/domain/entities/entities.dart';

abstract class GeminiFixtureMapper {
  static Map<String, dynamic> toGeminiJson(Fixture fixture) {
    return {
      'match_name': fixture.name,
      'league': fixture.league.name,
      'date': fixture.startingAt.toIso8601String().substring(0, 10),
      'venue': fixture.venue.name,
      'weather': {
        "temperature": fixture.weatherreport.feelsLike.evening,
        "wind_speed": fixture.weatherreport.wind.speed,
        "conditions": fixture.weatherreport.description,
      },
      'home_team': {'name': fixture.home.name},
      'away_team': {'name': fixture.away.name},
      'status': fixture.state.name,
    };
  }
}
