import 'package:betlyn/domain/entities/entities.dart';

abstract class SportsDatasource {
  Future<List<League>> getPopularLeagues();
  Future<List<Fixture>> getFixturesByDate();
}
