import 'package:betlyn/infrastructure/models/sportmonks/temperature_model.dart';
import 'package:betlyn/infrastructure/models/sportmonks/wind_model.dart';

class WeatherreportModel {
  final int? id;
  final int? fixtureId;
  final int? venueId;
  final TemperatureModel temperature;
  final TemperatureModel feelsLike;
  final WindModel wind;
  final String? humidity;
  final int? pressure;
  final String? clouds;
  final String? description;
  final String? icon;
  final String? type;
  final String? metric;
  final String? current;

  WeatherreportModel({
    required this.id,
    required this.fixtureId,
    required this.venueId,
    required this.temperature,
    required this.feelsLike,
    required this.wind,
    required this.humidity,
    required this.pressure,
    required this.clouds,
    required this.description,
    required this.icon,
    required this.type,
    required this.metric,
    required this.current,
  });

  factory WeatherreportModel.fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return WeatherreportModel(
        id: null,
        fixtureId: null,
        venueId: null,
        temperature: TemperatureModel.fromJson(null),
        feelsLike: TemperatureModel.fromJson(null),
        wind: WindModel.fromJson(null),
        humidity: null,
        pressure: null,
        clouds: null,
        description: null,
        icon: null,
        type: null,
        metric: null,
        current: null,
      );
    }

    return WeatherreportModel(
      id: json["id"],
      fixtureId: json["fixture_id"],
      venueId: json["venue_id"],
      temperature: TemperatureModel.fromJson(json["temperature"]),
      feelsLike: TemperatureModel.fromJson(json["feels_like"]),
      wind: WindModel.fromJson(json["wind"]),
      humidity: json["humidity"],
      pressure: json["pressure"],
      clouds: json["clouds"],
      description: json["description"],
      icon: json["icon"],
      type: json["type"],
      metric: json["metric"],
      current: json["current"],
    );
  }

  Map<String, dynamic> toJson() => {
    "id": id,
    "fixture_id": fixtureId,
    "venue_id": venueId,
    "temperature": temperature.toJson(),
    "feels_like": feelsLike.toJson(),
    "wind": wind.toJson(),
    "humidity": humidity,
    "pressure": pressure,
    "clouds": clouds,
    "description": description,
    "icon": icon,
    "type": type,
    "metric": metric,
    "current": current,
  };
}
