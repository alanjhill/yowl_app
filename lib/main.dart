import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:yowl_app/app/app_config.dart';
import 'package:yowl_app/core/api/business_api_client_impl.dart';
import 'package:yowl_app/core/repository/business_repository.dart';

import 'app/yowl_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppConfig().init();
  runApp(const YowlApp());
}
