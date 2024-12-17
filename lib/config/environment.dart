import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class Environment {
  static String get fileName {
    if (kReleaseMode) {
      return '.env.production';
    }
   else{
      return '.env.development';
    }
  }

  //get api key
  static String get apiKey{
    return dotenv.env['API_KEY']?? "default_url";
  }
  //get api key
  static String get baseUrl{
    return dotenv.env['BASE_URL']?? "default_url";
  }
}
