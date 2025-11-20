import 'package:betlyn/domain/entities/fixture.dart';

abstract class PredictionsDatasource {
  Future<String> getMatchPrediction(Fixture matchData);
}
