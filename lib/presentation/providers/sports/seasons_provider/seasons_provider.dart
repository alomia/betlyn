import 'package:betlyn/domain/entities/season.dart';
import 'package:betlyn/presentation/providers/sports/sports_repository/sports_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'seasons_provider.g.dart';

@Riverpod(keepAlive: true)
Future<Season> season(Ref ref, {required int leagueId}) {
  return ref
      .watch(sportsRepositoryProvider)
      .getLatestSeasonByLeague(leagueId: leagueId);
}
