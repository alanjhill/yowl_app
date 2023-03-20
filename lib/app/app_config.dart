import 'dart:convert';

import 'package:flutter/services.dart';

class AppConfig {

  static const _appConfigPath = 'assets/config/app.json';  
  static const String _apiKey = 'api_key';
  static const String _graphqlUrl = 'graphql_url';

  static final AppConfig _instance = AppConfig._internal();
  
  late final String apiKey;
  late final String graphqlUrl;

  AppConfig._internal();
  
  factory AppConfig() => _instance;

  Future<void> init() async {
    String app = await rootBundle.loadString(_appConfigPath);
    Map<String, dynamic> appConfigAsMap = json.decode(app);
    apiKey = appConfigAsMap[_apiKey];
    graphqlUrl = appConfigAsMap[_graphqlUrl];
  }
  

}
