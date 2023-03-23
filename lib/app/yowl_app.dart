import 'package:flutter/material.dart';
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
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'yowl',
      theme: ThemeData(
        primarySwatch: Colors.green,
        fontFamily: 'Urbanist',
      ),
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
