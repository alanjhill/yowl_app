import 'package:auto_route/auto_route.dart';
import 'package:yowl_app/features/business/business_details_screen.dart';
import 'package:yowl_app/features/home/home_screen.dart';

@CustomAutoRouter(
    transitionsBuilder: TransitionsBuilders.zoomIn,
    routes: <AutoRoute>[
      CustomRoute(page: HomeScreen, initial: true),
      CustomRoute(page: BusinessDetailsScreen),
    ])
class $AppRouter {}
