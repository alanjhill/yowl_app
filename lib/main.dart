import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:yowl_app/core/api/business_graphql_client.dart';
import 'package:yowl_app/core/api/business_graphql_client_impl.dart';
import 'package:yowl_app/core/repository/business_repository.dart';
import 'package:yowl_app/core/repository/business_repository_graphql_impl.dart';

import 'app/yowl_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  /// Initialize services with GetIt
  GetIt.instance.registerSingleton<BusinessGraphqlClient>(
    YelpBusinessGraphqlClientImpl(),
  );
  GetIt.instance.registerSingleton<BusinessRepository>(
      YelpBusinessRepositoryGraphqlImpl());

  runApp(const YowlApp());
}
