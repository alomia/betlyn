class TemperatureModel {
  final double? day;
  final double? morning;
  final double? evening;
  final double? night;

  TemperatureModel({
    required this.day,
    required this.morning,
    required this.evening,
    required this.night,
  });

  factory TemperatureModel.fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return TemperatureModel(
        day: null,
        morning: null,
        evening: null,
        night: null,
      );
    }

    return TemperatureModel(
      day: json["day"]?.toDouble(),
      morning: json["morning"]?.toDouble(),
      evening: json["evening"]?.toDouble(),
      night: json["night"]?.toDouble(),
    );
  }

  Map<String, dynamic> toJson() => {
    "day": day,
    "morning": morning,
    "evening": evening,
    "night": night,
  };
}
