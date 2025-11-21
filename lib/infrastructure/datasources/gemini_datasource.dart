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

    final prompt =
        """
Eres un analista deportivo profesional especializado en apuestas inteligentes. 
Recibirás un JSON con estadísticas detalladas del partido:

$matchJsonString

Tu tarea:
1. Analiza profundamente todos los datos: forma reciente, goles marcados y concedidos, localía, historial, tendencias, tiros, tarjetas, corners, posesión, xG, alineaciones, rachas, etc.
2. Identifica el mercado de apuesta MÁS inteligente y seguro según los datos, NO necesariamente quién gana.
3. Puede ser: más/menos goles, ambos anotan, doble oportunidad, tarjetas, corners, tiros al arco, handicap, gol de localía, marcador probable, etc.
4. Basado en el análisis, entrega **una sola recomendación precisa**, que tenga sentido estadístico.
5. La respuesta debe ser **muy corta, contundente y clara (máximo 30 palabras)**.
6. Evita explicaciones. Da solo la sugerencia final.

Ejemplo de estilo deseado:
- "Over 1.5 goles es la opción más sólida; ambos equipos promedian alto xG y defensas inconsistentes."
- "Ambos anotan es la apuesta más inteligente; visitantes siempre marcan y locales conceden en 8/9 juegos."

Responde con una recomendación directa y de calidad profesional para apostar.
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

    return GeminiResponse.fromJson(
      response.data,
    ).candidates.first.content.parts.first.text;
  }
}
