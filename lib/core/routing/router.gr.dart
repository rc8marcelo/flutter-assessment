// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../../features/auth/sign_in_screen.dart' as _i3;
import '../../features/calculator/calculator_screen.dart' as _i7;
import '../../features/home/home_screen.dart' as _i4;
import '../../features/map/map_screen.dart' as _i5;
import '../../features/newsfeed/newsfeed_screen.dart' as _i6;

class Router extends _i1.RootStackRouter {
  Router([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    SignInScreen.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i3.SignInScreen();
        }),
    HomeScreen.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i4.HomeScreen();
        }),
    MapScreen.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i5.MapScreen();
        }),
    NewsFeedScreen.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i6.NewsFeedScreen();
        }),
    CalculatorScreen.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i7.CalculatorScreen();
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(SignInScreen.name, path: '/'),
        _i1.RouteConfig(HomeScreen.name, path: '/home-screen', children: [
          _i1.RouteConfig(MapScreen.name, path: 'map-screen'),
          _i1.RouteConfig(NewsFeedScreen.name, path: 'news-feed-screen'),
          _i1.RouteConfig(CalculatorScreen.name, path: 'calculator-screen')
        ])
      ];
}

class SignInScreen extends _i1.PageRouteInfo {
  const SignInScreen() : super(name, path: '/');

  static const String name = 'SignInScreen';
}

class HomeScreen extends _i1.PageRouteInfo {
  const HomeScreen({List<_i1.PageRouteInfo>? children})
      : super(name, path: '/home-screen', initialChildren: children);

  static const String name = 'HomeScreen';
}

class MapScreen extends _i1.PageRouteInfo {
  const MapScreen() : super(name, path: 'map-screen');

  static const String name = 'MapScreen';
}

class NewsFeedScreen extends _i1.PageRouteInfo {
  const NewsFeedScreen() : super(name, path: 'news-feed-screen');

  static const String name = 'NewsFeedScreen';
}

class CalculatorScreen extends _i1.PageRouteInfo {
  const CalculatorScreen() : super(name, path: 'calculator-screen');

  static const String name = 'CalculatorScreen';
}
