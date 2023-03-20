// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import '../../features/business/business_details_screen.dart' as _i2;
import '../../features/home/home_screen.dart' as _i1;
import '../../model/business.dart' as _i5;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    HomeScreenRoute.name: (routeData) {
      return _i3.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i1.HomeScreen(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    BusinessDetailsScreenRoute.name: (routeData) {
      final args = routeData.argsAs<BusinessDetailsScreenRouteArgs>();
      return _i3.CustomPage<dynamic>(
        routeData: routeData,
        child: _i2.BusinessDetailsScreen(
          key: args.key,
          business: args.business,
        ),
        opaque: true,
        barrierDismissible: false,
      );
    },
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(
          HomeScreenRoute.name,
          path: '/',
        ),
        _i3.RouteConfig(
          BusinessDetailsScreenRoute.name,
          path: '/business-details-screen',
        ),
      ];
}

/// generated route for
/// [_i1.HomeScreen]
class HomeScreenRoute extends _i3.PageRouteInfo<void> {
  const HomeScreenRoute()
      : super(
          HomeScreenRoute.name,
          path: '/',
        );

  static const String name = 'HomeScreenRoute';
}

/// generated route for
/// [_i2.BusinessDetailsScreen]
class BusinessDetailsScreenRoute
    extends _i3.PageRouteInfo<BusinessDetailsScreenRouteArgs> {
  BusinessDetailsScreenRoute({
    _i4.Key? key,
    required _i5.Business business,
  }) : super(
          BusinessDetailsScreenRoute.name,
          path: '/business-details-screen',
          args: BusinessDetailsScreenRouteArgs(
            key: key,
            business: business,
          ),
        );

  static const String name = 'BusinessDetailsScreenRoute';
}

class BusinessDetailsScreenRouteArgs {
  const BusinessDetailsScreenRouteArgs({
    this.key,
    required this.business,
  });

  final _i4.Key? key;

  final _i5.Business business;

  @override
  String toString() {
    return 'BusinessDetailsScreenRouteArgs{key: $key, business: $business}';
  }
}
