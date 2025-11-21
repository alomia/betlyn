import 'package:betlyn/domain/entities/temperature.dart';
import 'package:betlyn/infrastructure/models/sportmonks/temperature_model.dart';

class TemperatureMapper {
  static Temperature toEntity(TemperatureModel temperature) => Temperature(
    day: temperature.day ?? 0.0,
    morning: temperature.morning ?? 0.0,
    evening: temperature.evening ?? 0.0,
    night: temperature.night ?? 0.0,
  );
}
