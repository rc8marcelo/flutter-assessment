import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_assessment/features/news/models/news_article.dart';
import 'package:flutter_assessment/features/news/news_router_page.dart';
import 'package:flutter_assessment/features/splash/splash_screen.dart';
import '../../features/calculator/calculator_screen.dart';
import '../../features/map/map_screen.dart';
import '../../features/news/news_details_screen.dart';
import '../../features/news/newsfeed_screen.dart';

import '../../features/auth/sign_in_screen.dart';
import '../../features/home/home_screen.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  RouteType get defaultRouteType =>
      const RouteType.material(); //.cupertino, .adaptive ..etc

  @override
  List<AutoRoute> get routes => <AutoRoute>[
        AutoRoute(page: SplashRoute.page, initial: true),
        AutoRoute(page: SignInRoute.page),
        AutoRoute(
          page: HomeRoute.page,
          children: [
            AutoRoute(page: MapRoute.page),
            AutoRoute(page: NewsRouter.page, children: [
              AutoRoute(page: NewsFeedRoute.page, initial: true),
              AutoRoute(page: NewsDetailsRoute.page),
            ]),
            AutoRoute(page: CalculatorRoute.page),
          ],
        ),
      ];
}
