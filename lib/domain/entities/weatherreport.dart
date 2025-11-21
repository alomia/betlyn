import 'package:betlyn/domain/entities/temperature.dart';
import 'package:betlyn/domain/entities/wind.dart';

class Weatherreport {
  final int id;
  final int fixtureId;
  final int venueId;
  final Temperature temperature;
  final Temperature feelsLike;
  final Wind wind;
  final String humidity;
  final int pressure;
  final String clouds;
  final String description;
  final String icon;
  final String type;
  final String metric;
  final String current;

  Weatherreport({
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
}
