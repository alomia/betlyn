import 'package:flutter_dotenv/flutter_dotenv.dart';

class Environment {
  static String sportmonksToken = dotenv.get('SPORTMONKS_TOKEN');
}
