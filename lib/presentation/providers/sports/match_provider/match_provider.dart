import 'package:betlyn/domain/entities/fixture.dart';
import 'package:betlyn/presentation/providers/sports/sports_repository/sports_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'match_provider.g.dart';

@Riverpod(keepAlive: true)
Future<Fixture> match(Ref ref, {required int fixtureId}) {
  return ref
      .watch(sportsRepositoryProvider)
      .getFixturesById(fixtureId: fixtureId);
}
