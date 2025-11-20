import 'package:betlyn/domain/entities/score.dart';
import 'package:betlyn/infrastructure/models/sportmonks/score_model.dart';

abstract class ScoreMapper {
  static Score toEntity(ScoreModel score) =>
      Score(id: score.id ?? 0, goals: score.score.goals ?? 0);
}
