import 'package:betlyn/domain/entities/season.dart';
import 'package:betlyn/infrastructure/mappers/league_mapper.dart';
import 'package:betlyn/infrastructure/models/sportmonks/season_model.dart';

class SeasonMapper {
  static Season toEntity(SeasonModel season) => Season(
    id: season.id,
    sportId: season.sportId,
    leagueId: season.leagueId,
    tieBreakerRuleId: season.tieBreakerRuleId,
    name: season.name,
    finished: season.finished,
    pending: season.pending,
    isCurrent: season.isCurrent,
    startingAt: season.startingAt,
    endingAt: season.endingAt,
    standingsRecalculatedAt: season.standingsRecalculatedAt,
    gamesInCurrentWeek: season.gamesInCurrentWeek,
    league: LeagueMapper.toEntity(season.league),
  );
}
