import 'package:betlyn/domain/entities/wind.dart';
import 'package:betlyn/infrastructure/models/sportmonks/wind_model.dart';

class WindMapper {
  static Wind toEntity(WindModel wind) =>
      Wind(speed: wind.speed ?? 0.0, direction: wind.direction ?? 0);
}
