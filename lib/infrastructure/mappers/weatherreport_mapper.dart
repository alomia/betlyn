import 'package:betlyn/domain/entities/weatherreport.dart';
import 'package:betlyn/infrastructure/mappers/temperature_mapper.dart';
import 'package:betlyn/infrastructure/mappers/wind_mapper.dart';
import 'package:betlyn/infrastructure/models/sportmonks/weatherreport_model.dart';

class WeatherreportMapper {
  static Weatherreport toEntity(WeatherreportModel model) => Weatherreport(
    id: model.id ?? 0,
    fixtureId: model.fixtureId ?? 0,
    venueId: model.venueId ?? 0,
    temperature: TemperatureMapper.toEntity(model.temperature),
    feelsLike: TemperatureMapper.toEntity(model.feelsLike),
    wind: WindMapper.toEntity(model.wind),
    humidity: model.humidity ?? '',
    pressure: model.pressure ?? 0,
    clouds: model.clouds ?? '',
    description: model.description ?? '',
    icon: model.icon ?? '',
    type: model.type ?? '',
    metric: model.metric ?? '',
    current: model.current ?? '',
  );
}
