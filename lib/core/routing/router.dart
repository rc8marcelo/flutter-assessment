import 'package:auto_route/auto_route.dart';
import 'package:flutter_assessment/features/splash/splash_screen.dart';
import '../../features/calculator/calculator_screen.dart';
import '../../features/map/map_screen.dart';
import '../../features/news/news_details_screen.dart';
import '../../features/news/newsfeed_screen.dart';

import '../../features/auth/sign_in_screen.dart';
import '../../features/home/home_screen.dart';

const _screenRouteReplacement = 'Screen,Route';
const _newsRouter = 'NewsRouter';

@MaterialAutoRouter(
  preferRelativeImports: true,
  replaceInRouteName: _screenRouteReplacement,
  routes: <AutoRoute>[
    AutoRoute(page: SplashScreen, initial: true),
    AutoRoute(page: SignInScreen),
    AutoRoute(
      page: HomeScreen,
      children: [
        AutoRoute(page: MapScreen),
        AutoRoute(page: EmptyRouterPage, name: _newsRouter, children: [
          AutoRoute(page: NewsFeedScreen, initial: true),
          AutoRoute(page: NewsDetailsScreen),
        ]),
        AutoRoute(page: CalculatorScreen),
      ],
    ),
  ],
)

///App's router
class $Router {}
