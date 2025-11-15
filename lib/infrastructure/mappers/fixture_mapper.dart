import 'package:betlyn/domain/entities/entities.dart';
import 'package:betlyn/infrastructure/mappers/league_mapper.dart';
import 'package:betlyn/infrastructure/mappers/team_mapper.dart';
import 'package:betlyn/infrastructure/models/sportmonks/fixture_model.dart';

class FixtureMapper {
  static Fixture fixtureToEntity(FixtureModel fixture) {
    final home = fixture.participants.firstWhere(
      (element) => element.meta.location == 'home',
    );
    final away = fixture.participants.firstWhere(
      (element) => element.meta.location == 'away',
    );

    return Fixture(
      id: fixture.id,
      leagueId: fixture.leagueId,
      name: fixture.name,
      startingAt: fixture.startingAt,
      home: TeamMapper.toEntity(home),
      away: TeamMapper.toEntity(away),
      league: LeagueMapper.toEntity(fixture.league)
    );
  }
}
