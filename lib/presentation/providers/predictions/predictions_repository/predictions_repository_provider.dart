import 'package:betlyn/infrastructure/datasources/gemini_datasource.dart';
import 'package:betlyn/infrastructure/repositories/predictions_repository_impl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'predictions_repository_provider.g.dart';

@Riverpod(keepAlive: true)
PredictionsRepositoryImpl predictionsRepository  (Ref ref) {
  return PredictionsRepositoryImpl(datasource: GeminiDatasource());
}
