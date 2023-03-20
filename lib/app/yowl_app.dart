import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:yowl_app/core/api/business_graphql_client.dart';
import 'package:yowl_app/core/api/business_graphql_client_impl.dart';
import 'package:yowl_app/core/repository/business_repository.dart';
import 'package:yowl_app/core/repository/business_repository_graphql_impl.dart';
import 'package:yowl_app/core/router/app_router.gr.dart';

class YowlApp extends StatefulWidget {
  const YowlApp({
    Key? key,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _YowlApp();
}

class _YowlApp extends State<YowlApp> with WidgetsBindingObserver {
  final _appRouter = AppRouter();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _init();
  }

  /// Initialize services with GetIt
  void _init() {
    // Graphql
    GetIt.instance.registerSingleton<BusinessGraphqlClient>(
      YelpBusinessGraphqlClientImpl(),
    );
    GetIt.instance.registerSingleton<BusinessRepository>(
        YelpBusinessRepositoryGraphqlImpl());
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Yowl App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
