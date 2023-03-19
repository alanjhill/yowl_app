import 'dart:convert';

import 'package:flutter/services.dart';

class AppConfig {

  static const _appConfigPath = 'assets/config/app.json';  
  static const String _baseUrl = 'base_url';
  static const String _apiKey = 'api_key';

  static final AppConfig _instance = AppConfig._internal();
  
  late final String baseUrl;
  late final String apiKey;

  AppConfig._internal();
  
  factory AppConfig() => _instance;

  Future<void> init() async {
    String app = await rootBundle.loadString(_appConfigPath);
    Map<String, dynamic> appConfigAsMap = json.decode(app);
    baseUrl = appConfigAsMap[_baseUrl];
    apiKey = appConfigAsMap[_apiKey];
  }
  

}
