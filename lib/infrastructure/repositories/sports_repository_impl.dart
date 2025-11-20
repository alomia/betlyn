import 'package:betlyn/domain/datasources/datasources.dart';
import 'package:betlyn/domain/entities/fixture.dart';
import 'package:betlyn/domain/entities/season.dart';
import 'package:betlyn/domain/repositories/repositories.dart';

class SportsRepositoryImpl implements SportsRepository {
  final SportsDatasource datasource;

  SportsRepositoryImpl(this.datasource);

  @override
  Future<List<Fixture>> getFixturesByDate({
    required String startDate,
    required String endDate,
    required int leagueId,
  }) {
    return datasource.getFixturesByDate(
      startDate: startDate,
      endDate: endDate,
      leagueId: leagueId,
    );
  }

  @override
  Future<Season> getLatestSeasonByLeague({required int leagueId}) {
    return datasource.getLatestSeasonByLeague(leagueId: leagueId);
  }
  
  @override
  Future<Fixture> getFixturesById({required int fixtureId}) {
    return datasource.getFixturesById(fixtureId: fixtureId);
  }
}
