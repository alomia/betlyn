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
    final repository = ref.read(predictionsRepositoryProvider);
    final result = await repository.getMatchPrediction(match);

    state = {...state, match.id: result};
  }
}
