class StateModel {
  final int id;
  final String state;
  final String name;
  final String shortName;
  final String developerName;

  StateModel({
    required this.id,
    required this.state,
    required this.name,
    required this.shortName,
    required this.developerName,
  });

  factory StateModel.fromJson(Map<String, dynamic> json) => StateModel(
    id: json["id"],
    state: json["state"],
    name: json["name"],
    shortName: json["short_name"],
    developerName: json["developer_name"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "state": state,
    "name": name,
    "short_name": shortName,
    "developer_name": developerName,
  };
}
