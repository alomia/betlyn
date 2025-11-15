import 'package:betlyn/domain/entities/fixture.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:betlyn/presentation/providers/sports/sports_repository/sports_repository_provider.dart';

part 'fixtures_provider.g.dart';

@riverpod
Future<List<Fixture>> fixtures (Ref ref) {
  return ref.watch(sportsRepositoryProvider).getFixturesByDate();
}
