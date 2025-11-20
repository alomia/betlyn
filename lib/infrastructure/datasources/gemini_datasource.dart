import 'package:betlyn/config/constants/environment.dart';
import 'package:betlyn/domain/datasources/predictions_datasource.dart';
import 'package:betlyn/domain/entities/fixture.dart';
import 'package:betlyn/infrastructure/models/gemini/gemini_response.dart';
import 'package:dio/dio.dart';

class GeminiDatasource implements PredictionsDatasource {
  String modelPath = 'gemini-2.5-flash:generateContent';

  final _dio = Dio(
    BaseOptions(
      baseUrl: 'https://generativelanguage.googleapis.com/v1beta/models/',
      headers: {
        "x-goog-api-key": Environment.geminiApiKey,
        "Content-Type": "application/json",
      },
    ),
  );

  @override
  Future<String> getMatchPrediction(Fixture matchData) async {
    final response = await _dio.post(
      modelPath,
      data: {
        "contents": [
          {
            "parts": [
              {"text": "Dame un predicion muy corta de este partido $matchData"},
            ],
          },
        ],
      },
    );

    return GeminiResponse.fromJson(response.data).candidates.first.content.parts.first.text;
  }
}
