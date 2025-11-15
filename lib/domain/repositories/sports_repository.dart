import 'package:betlyn/domain/entities/entities.dart';

abstract class SportsRepository {
  Future<List<League>> getPopularLeagues();
  Future<List<Fixture>> getFixturesByDate();
}
