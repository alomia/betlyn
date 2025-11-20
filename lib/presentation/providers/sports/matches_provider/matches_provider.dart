import 'package:betlyn/config/helpers/helpers.dart';
import 'package:betlyn/domain/entities/entities.dart';
import 'package:betlyn/presentation/providers/sports/sports_repository/sports_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'matches_provider.g.dart';

@Riverpod(keepAlive: true)
Future<List<Fixture>> matches(Ref ref, {required int leagueId}) {
  final range = DateFormatter.range(7);

  return ref
      .watch(sportsRepositoryProvider)
      .getFixturesByDate(
        startDate: range.start,
        endDate: range.end,
        leagueId: leagueId,
      );
}
