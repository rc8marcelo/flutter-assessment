import 'package:auto_route/auto_route.dart';
import '../../features/calculator/calculator_screen.dart';
import '../../features/map/map_screen.dart';
import '../../features/news/news_details_screen.dart';
import '../../features/news/newsfeed_screen.dart';

import '../../features/auth/sign_in_screen.dart';
import '../../features/home/home_screen.dart';

@MaterialAutoRouter(
  preferRelativeImports: true,
  replaceInRouteName: 'Screen,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SignInScreen, initial: true),
    AutoRoute(
      page: HomeScreen,
      children: [
        AutoRoute(page: MapScreen),
        AutoRoute(page: EmptyRouterPage, name: 'NewsRouter', children: [
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
