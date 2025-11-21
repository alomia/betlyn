import 'package:betlyn/domain/entities/fixture.dart';
import 'package:betlyn/presentation/providers/predictions/match_prediction/match_prediction_state.dart';
import 'package:betlyn/presentation/providers/predictions/predictions_repository/predictions_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'match_prediction_provider.g.dart';

typedef FixtureMap = Map<int, MatchPredictionState>;

@Riverpod(keepAlive: true)
class MatchPrediction extends _$MatchPrediction {
  @override
  FixtureMap build() {
    return {};
  }

  Future<void> predict(Fixture match) async {
    final id = match.id;

    state = {
      ...state,
      id: MatchPredictionState(isLoading: true, prediction: ''),
    };

    final repository = ref.read(predictionsRepositoryProvider);
    final result = await repository.getMatchPrediction(match);

    state = {
      ...state,
      id: MatchPredictionState(isLoading: false, prediction: result),
    };
  }
}
