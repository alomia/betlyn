import 'dart:convert';

import 'package:betlyn/config/constants/environment.dart';
import 'package:betlyn/domain/datasources/predictions_datasource.dart';
import 'package:betlyn/domain/entities/fixture.dart';
import 'package:betlyn/infrastructure/mappers/gemini_fixture_mapper.dart';
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
    final matchMap = GeminiFixtureMapper.toGeminiJson(matchData);
    final matchJsonString = jsonEncode(matchMap);

    final prompt = """
      Eres un experto analista deportivo. 
      Analiza el siguiente JSON con la información del partido:
      $matchJsonString
      
      Dame una predicción muy corta, de no más de 30 palabras, sobre el resultado más probable.
    """;
    
    final response = await _dio.post(
      modelPath,
      data: {
        "contents": [
          {
            "parts": [
              {"text": prompt},
            ],
          },
        ],
      },
    );

    return GeminiResponse.fromJson(response.data).candidates.first.content.parts.first.text;
  }
}
