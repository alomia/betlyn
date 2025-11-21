class WindModel {
  final double? speed;
  final int? direction;

  WindModel({required this.speed, required this.direction});

  factory WindModel.fromJson(Map<String, dynamic>? json) {
    if (json == null) return WindModel(speed: null, direction: null);

    return WindModel(
      speed: json["speed"]?.toDouble(),
      direction: json["direction"],
    );
  }

  Map<String, dynamic> toJson() => {"speed": speed, "direction": direction};
}
