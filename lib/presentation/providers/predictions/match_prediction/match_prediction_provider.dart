import 'package:betlyn/domain/entities/fixture.dart';
import 'package:betlyn/presentation/providers/predictions/predictions_repository/predictions_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'match_prediction_provider.g.dart';

typedef FixtureMap = Map<int, String>;

@Riverpod(keepAlive: true)
class MatchPrediction extends _$MatchPrediction {
  @override
  FixtureMap build() {
    return {};
  }

  Future<void> predict(Fixture match) async {

    print(match);

    print('Entro prediccion');
    final repository = ref.read(predictionsRepositoryProvider);
    final result = await repository.getMatchPrediction(match);

    print('Guardo prediccion');
    state = {...state, match.id: result};
    print('Fin');
  }

  String getPredictionByID(int id) {
    return state[id] ?? '';
  }
}
