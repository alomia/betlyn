import 'package:betlyn/domain/entities/entities.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:betlyn/presentation/providers/sports/sports_repository/sports_repository_provider.dart';

part 'leagues_provider.g.dart';

@riverpod
Future<List<League>> leagues (Ref ref) {
  return ref.watch(sportsRepositoryProvider).getPopularLeagues();
}
