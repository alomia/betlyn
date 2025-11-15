import 'package:betlyn/domain/datasources/datasources.dart';
import 'package:betlyn/domain/entities/entities.dart';
import 'package:betlyn/domain/repositories/repositories.dart';

class SportsRepositoryImpl implements SportsRepository {
  final SportsDatasource datasource;

  SportsRepositoryImpl(this.datasource);

  @override
  Future<List<League>> getPopularLeagues() {
    return datasource.getPopularLeagues();
  }

  @override
  Future<List<Fixture>> getFixturesByDate() {
    return datasource.getFixturesByDate();
  }
}
