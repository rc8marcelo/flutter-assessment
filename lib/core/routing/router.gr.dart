// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../../features/auth/sign_in_screen.dart' as _i4;
import '../../features/calculator/calculator_screen.dart' as _i7;
import '../../features/home/home_screen.dart' as _i5;
import '../../features/map/map_screen.dart' as _i6;
import '../../features/news/models/news_article.dart' as _i10;
import '../../features/news/news_details_screen.dart' as _i9;
import '../../features/news/newsfeed_screen.dart' as _i8;
import '../../features/splash/splash_screen.dart' as _i3;

class Router extends _i1.RootStackRouter {
  Router([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i3.SplashScreen();
        }),
    SignInRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i4.SignInScreen();
        }),
    HomeRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<HomeRouteArgs>();
          return _i5.HomeScreen(displayName: args.displayName, key: args.key);
        }),
    MapRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i6.MapScreen();
        }),
    NewsRouter.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i1.EmptyRouterPage();
        }),
    CalculatorRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i7.CalculatorScreen();
        }),
    NewsFeedRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i8.NewsFeedScreen();
        }),
    NewsDetailsRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<NewsDetailsRouteArgs>();
          return _i9.NewsDetailsScreen(article: args.article, key: args.key);
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(SplashRoute.name, path: '/'),
        _i1.RouteConfig(SignInRoute.name, path: '/sign-in-screen'),
        _i1.RouteConfig(HomeRoute.name, path: '/home-screen', children: [
          _i1.RouteConfig(MapRoute.name, path: 'map-screen'),
          _i1.RouteConfig(NewsRouter.name,
              path: 'empty-router-page',
              children: [
                _i1.RouteConfig(NewsFeedRoute.name, path: ''),
                _i1.RouteConfig(NewsDetailsRoute.name,
                    path: 'news-details-screen')
              ]),
          _i1.RouteConfig(CalculatorRoute.name, path: 'calculator-screen')
        ])
      ];
}

class SplashRoute extends _i1.PageRouteInfo {
  const SplashRoute() : super(name, path: '/');

  static const String name = 'SplashRoute';
}

class SignInRoute extends _i1.PageRouteInfo {
  const SignInRoute() : super(name, path: '/sign-in-screen');

  static const String name = 'SignInRoute';
}

class HomeRoute extends _i1.PageRouteInfo<HomeRouteArgs> {
  HomeRoute(
      {required String displayName,
      _i2.Key? key,
      List<_i1.PageRouteInfo>? children})
      : super(name,
            path: '/home-screen',
            args: HomeRouteArgs(displayName: displayName, key: key),
            initialChildren: children);

  static const String name = 'HomeRoute';
}

class HomeRouteArgs {
  const HomeRouteArgs({required this.displayName, this.key});

  final String displayName;

  final _i2.Key? key;
}

class MapRoute extends _i1.PageRouteInfo {
  const MapRoute() : super(name, path: 'map-screen');

  static const String name = 'MapRoute';
}

class NewsRouter extends _i1.PageRouteInfo {
  const NewsRouter({List<_i1.PageRouteInfo>? children})
      : super(name, path: 'empty-router-page', initialChildren: children);

  static const String name = 'NewsRouter';
}

class CalculatorRoute extends _i1.PageRouteInfo {
  const CalculatorRoute() : super(name, path: 'calculator-screen');

  static const String name = 'CalculatorRoute';
}

class NewsFeedRoute extends _i1.PageRouteInfo {
  const NewsFeedRoute() : super(name, path: '');

  static const String name = 'NewsFeedRoute';
}

class NewsDetailsRoute extends _i1.PageRouteInfo<NewsDetailsRouteArgs> {
  NewsDetailsRoute({required _i10.NewsArticle article, _i2.Key? key})
      : super(name,
            path: 'news-details-screen',
            args: NewsDetailsRouteArgs(article: article, key: key));

  static const String name = 'NewsDetailsRoute';
}

class NewsDetailsRouteArgs {
  const NewsDetailsRouteArgs({required this.article, this.key});

  final _i10.NewsArticle article;

  final _i2.Key? key;
}
