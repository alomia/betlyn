import 'package:betlyn/domain/entities/state.dart';
import 'package:betlyn/infrastructure/models/sportmonks/state_model.dart';

abstract class StateMapper {
  static State toEntity(StateModel state) => State(
    id: state.id,
    state: state.state,
    name: state.name,
    shortName: state.shortName,
    developerName: state.developerName,
  );
}
