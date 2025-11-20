import 'package:flutter_dotenv/flutter_dotenv.dart';

class Environment {
  static String sportmonksToken = dotenv.get('SPORTMONKS_TOKEN');
  static String geminiApiKey = dotenv.get('GEMINI_API_KEY');
}
