import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:betlyn/infrastructure/datasources/datasources.dart';
import 'package:betlyn/infrastructure/repositories/repositories.dart';

part 'sports_repository_provider.g.dart';

@Riverpod(keepAlive: true)
SportsRepositoryImpl sportsRepository(Ref ref) {
  return SportsRepositoryImpl(SportmonksDatasource());
}
