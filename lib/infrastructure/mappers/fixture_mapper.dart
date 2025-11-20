import 'package:betlyn/domain/entities/entities.dart';
import 'package:betlyn/infrastructure/mappers/league_mapper.dart';
import 'package:betlyn/infrastructure/mappers/score_mapper.dart';
import 'package:betlyn/infrastructure/mappers/state_mapper.dart';
import 'package:betlyn/infrastructure/mappers/team_mapper.dart';
import 'package:betlyn/infrastructure/mappers/venue_mapper.dart';
import 'package:betlyn/infrastructure/models/sportmonks/fixture_model.dart';
import 'package:betlyn/infrastructure/models/sportmonks/score_model.dart';

class FixtureMapper {
  static Fixture toEntity(FixtureModel fixture) {
    final home = fixture.participants.firstWhere(
      (element) => element.meta.location == 'home',
    );

    final away = fixture.participants.firstWhere(
      (element) => element.meta.location == 'away',
    );

    final homeScore = fixture.scores.firstWhere(
      (element) =>
          element.score.participant == 'home' &&
          element.description == 'CURRENT',
      orElse: () => ScoreModel(
        id: null,
        fixtureId: null,
        typeId: null,
        participantId: null,
        score: ScoreDetail(goals: null, participant: null),
        description: null,
      ),
    );

    final awayScore = fixture.scores.firstWhere(
      (element) =>
          element.score.participant == 'away' &&
          element.description == 'CURRENT',
      orElse: () => ScoreModel(
        id: null,
        fixtureId: null,
        typeId: null,
        participantId: null,
        score: ScoreDetail(goals: null, participant: null),
        description: null,
      ),
    );

    return Fixture(
      id: fixture.id ?? 0,
      leagueId: fixture.leagueId ?? 0,
      name: fixture.name ?? '',
      startingAt: fixture.startingAt ?? DateTime.now(),
      state: StateMapper.toEntity(fixture.state),
      home: TeamMapper.toEntity(home),
      away: TeamMapper.toEntity(away),
      league: LeagueMapper.toEntity(fixture.league),
      venue: VenueMapper.toEntity(fixture.venue),
      homeScore: ScoreMapper.toEntity(homeScore),
      awayScore: ScoreMapper.toEntity(awayScore),
    );
  }
}
