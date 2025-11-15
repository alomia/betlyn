import 'package:betlyn/infrastructure/mappers/mappers.dart';
import 'package:dio/dio.dart';

import 'package:betlyn/config/helpers/helpers.dart';
import 'package:betlyn/config/constants/environment.dart';
import 'package:betlyn/domain/datasources/datasources.dart';
import 'package:betlyn/domain/entities/entities.dart';
import 'package:betlyn/infrastructure/models/models.dart';

const popularLeagueIds = [2, 564, 384, 8, 82, 301];

class SportmonksDatasource implements SportsDatasource {
  final dio = Dio(
    BaseOptions(
      baseUrl: 'https://api.sportmonks.com/v3',
      headers: {'authorization': Environment.sportmonksToken},
    ),
  );

  @override
  Future<List<League>> getPopularLeagues() async {
    final response = await dio.get('/football/leagues');

    List<League> allLeagues = AllLeaguesResponse.fromJson(
      response.data,
    ).data.map((league) => LeagueMapper.toEntity(league)).toList();

    if (popularLeagueIds.isNotEmpty) {
      allLeagues = allLeagues
          .where((league) => popularLeagueIds.contains(league.id))
          .toList();
    }

    return allLeagues;
  }

  @override
  Future<List<Fixture>> getFixturesByDate() async {
    final range = DateFormatter.weekRangeFromToday();

    final response = await dio.get(
      '/football/fixtures/between/${range.start}/${range.end}?include=participants;league;venue',
    );

    return FixturesResponse.fromJson(
      response.data,
    ).data.map((fixture) => FixtureMapper.fixtureToEntity(fixture)).toList();
  }
}
