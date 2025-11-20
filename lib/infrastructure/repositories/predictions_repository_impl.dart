import 'package:betlyn/domain/datasources/predictions_datasource.dart';
import 'package:betlyn/domain/entities/fixture.dart';
import 'package:betlyn/domain/repositories/predictions_repository.dart';

class PredictionsRepositoryImpl implements PredictionsRepository {
  final PredictionsDatasource datasource;

  PredictionsRepositoryImpl({required this.datasource});
  
  @override
  Future<String> getMatchPrediction(Fixture matchData) {
    return datasource.getMatchPrediction(matchData);
  }  
}
