import 'package:auto_route/auto_route.dart';
import 'package:flutter_assessment/features/calculator/calculator_screen.dart';
import 'package:flutter_assessment/features/map/map_screen.dart';
import 'package:flutter_assessment/features/newsfeed/newsfeed_screen.dart';

import '../../features/auth/sign_in_screen.dart';
import '../../features/home/home_screen.dart';

@MaterialAutoRouter(
  preferRelativeImports: true,
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SignInScreen, initial: true),
    AutoRoute(
      page: HomeScreen,
      children: [
        AutoRoute(page: MapScreen),
        AutoRoute(page: NewsFeedScreen),
        AutoRoute(page: CalculatorScreen),
      ],
    ),
  ],
)

///App's router
class $Router {}
