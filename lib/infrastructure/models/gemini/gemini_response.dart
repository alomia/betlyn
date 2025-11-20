class GeminiResponse {
  final List<Candidate> candidates;

  GeminiResponse({required this.candidates});

  factory GeminiResponse.fromJson(Map<String, dynamic> json) => GeminiResponse(
    candidates: List<Candidate>.from(
      json["candidates"].map((x) => Candidate.fromJson(x)),
    ),
  );

  Map<String, dynamic> toJson() => {
    "candidates": List<dynamic>.from(candidates.map((x) => x.toJson())),
  };
}

class Candidate {
  final Content content;

  Candidate({required this.content});

  factory Candidate.fromJson(Map<String, dynamic> json) =>
      Candidate(content: Content.fromJson(json["content"]));

  Map<String, dynamic> toJson() => {"content": content.toJson()};
}

class Content {
  final List<Part> parts;

  Content({required this.parts});

  factory Content.fromJson(Map<String, dynamic> json) => Content(
    parts: List<Part>.from(json["parts"].map((x) => Part.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "parts": List<dynamic>.from(parts.map((x) => x.toJson())),
  };
}

class Part {
  final String text;

  Part({required this.text});

  factory Part.fromJson(Map<String, dynamic> json) => Part(text: json["text"]);

  Map<String, dynamic> toJson() => {"text": text};
}
