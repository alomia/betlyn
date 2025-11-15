import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:betlyn/infrastructure/datasources/datasources.dart';
import 'package:betlyn/infrastructure/repositories/repositories.dart';

part 'sports_repository_provider.g.dart';

@riverpod
SportsRepositoryImpl sportsRepository(Ref ref) {
  return SportsRepositoryImpl(SportmonksDatasource());
}
