import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:yowl_app/app/app_config.dart';
import 'package:yowl_app/core/api/business_api_client.dart';
import 'package:yowl_app/core/api/business_api_client_impl.dart';
import 'package:yowl_app/core/repository/business_repository.dart';
import 'package:yowl_app/core/repository/business_repository_impl.dart';
import 'package:yowl_app/features/home/home.dart';

class YowlApp extends StatefulWidget {
  const YowlApp({
    Key? key,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _YowlApp();
}

class _YowlApp extends State<YowlApp> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _init();
  }

  void _init() {
    final dio = Dio(
      BaseOptions(
        baseUrl: AppConfig().baseUrl,
      ),
    );
    GetIt.instance.registerSingleton<BusinessApiClient>(
      YelpBusinessApiClientImpl(dio: dio),
    );
    GetIt.instance
        .registerSingleton<BusinessRepository>(YelpBusinessRepositoryImpl());
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yowl App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(title: 'YOWL Home Page'),
    );
  }
}
