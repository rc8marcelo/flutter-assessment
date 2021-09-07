import 'package:auto_route/auto_route.dart';

import '../../features/auth/sign_in_screen.dart';
import '../../features/home/home_screen.dart';

@MaterialAutoRouter(
  preferRelativeImports: true,
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SignInScreen, initial: true),
    AutoRoute(page: HomeScreen),
  ],
)

///App's router
class $Router {}
