import 'package:betlyn/domain/entities/fixture.dart';

abstract class PredictionsRepository {
  Future<String> getMatchPrediction(Fixture matchData);
}
