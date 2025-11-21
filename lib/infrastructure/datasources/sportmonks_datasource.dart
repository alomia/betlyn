import 'package:betlyn/domain/entities/season.dart';
import 'package:betlyn/infrastructure/mappers/season_mapper.dart';
import 'package:betlyn/infrastructure/models/sportmonks/fixture_model.dart';
import 'package:betlyn/infrastructure/models/sportmonks/season_response.dart';
import 'package:dio/dio.dart';
import 'package:betlyn/config/constants/environment.dart';
import 'package:betlyn/domain/entities/fixture.dart';
import 'package:betlyn/domain/datasources/datasources.dart';
import 'package:betlyn/infrastructure/mappers/fixture_mapper.dart';
import 'package:betlyn/infrastructure/models/sportmonks/fixture_response.dart';


class SportmonksDatasource implements SportsDatasource {
  final dio = Dio(
    BaseOptions(
      baseUrl: 'https://api.sportmonks.com/v3',
      headers: {'authorization': Environment.sportmonksToken},
    ),
  );

  @override
  Future<List<Fixture>> getFixturesByDate({
    required String startDate,
    required String endDate,
    required int leagueId,
  }) async {
    final response = await dio.get(
      '/football/fixtures/between/$startDate/$endDate?filters=fixtureLeagues:$leagueId&include=state;participants;league;venue;scores;weatherReport',
    );

    return FixtureResponse.fromJson(
      response.data,
    ).fixtures.map((fixture) => FixtureMapper.toEntity(fixture)).toList();
  }

  @override
  Future<Season> getLatestSeasonByLeague({required int leagueId}) async {
    final response = await dio.get('/football/seasons?include=league&filters=seasonLeagues:$leagueId&order=desc');

    final seasons = SeasonResponse.fromJson(response.data).data;

    final latestSeason = SeasonMapper.toEntity(seasons.firstWhere((season) => season.isCurrent));

    return latestSeason;
  }
  
  @override
  Future<Fixture> getFixturesById({required int fixtureId}) async {
    final response = await dio.get('/football/fixtures/$fixtureId?include=state;participants;league;venue;scores;weatherReport');

    final fixtureModel = FixtureModel.fromJson(response.data['data']);

    return FixtureMapper.toEntity(fixtureModel);
  }
}
