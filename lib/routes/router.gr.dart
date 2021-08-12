// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../presentation/screens/home_screen.dart' as _i4;
import '../presentation/screens/inspect_page.dart' as _i5;
import '../presentation/screens/splash_screen.dart' as _i3;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    SplashScreenRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i3.SplashScreen();
        }),
    HomeScreenRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i4.HomeScreen();
        }),
    InspectPageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<InspectPageRouteArgs>();
          return _i5.InspectPage(
              key: args.key, selectedIconIndex: args.selectedIconIndex);
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(SplashScreenRoute.name, path: '/'),
        _i1.RouteConfig(HomeScreenRoute.name, path: '/home-screen'),
        _i1.RouteConfig(InspectPageRoute.name, path: '/inspect-page')
      ];
}

class SplashScreenRoute extends _i1.PageRouteInfo {
  const SplashScreenRoute() : super(name, path: '/');

  static const String name = 'SplashScreenRoute';
}

class HomeScreenRoute extends _i1.PageRouteInfo {
  const HomeScreenRoute() : super(name, path: '/home-screen');

  static const String name = 'HomeScreenRoute';
}

class InspectPageRoute extends _i1.PageRouteInfo<InspectPageRouteArgs> {
  InspectPageRoute({_i2.Key? key, required int selectedIconIndex})
      : super(name,
            path: '/inspect-page',
            args: InspectPageRouteArgs(
                key: key, selectedIconIndex: selectedIconIndex));

  static const String name = 'InspectPageRoute';
}

class InspectPageRouteArgs {
  const InspectPageRouteArgs({this.key, required this.selectedIconIndex});

  final _i2.Key? key;

  final int selectedIconIndex;
}
