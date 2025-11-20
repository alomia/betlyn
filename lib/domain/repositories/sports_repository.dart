import 'package:betlyn/domain/entities/fixture.dart';
import 'package:betlyn/domain/entities/season.dart';

abstract class SportsRepository {
  Future<List<Fixture>> getFixturesByDate({
    required String startDate,
    required String endDate,
    required int leagueId,
  });

  Future<Fixture> getFixturesById({required int fixtureId});

  Future<Season> getLatestSeasonByLeague({required int leagueId});
}
