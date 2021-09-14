import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/routing/router.gr.dart';
import '../auth/cubit/auth_cubit.dart';

const _splashScreen = 'Splash Screen';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listener: (context, state) async {
        state.maybeWhen(
          signedIn: (user) => _moveToHome(context, name: user.name),
          error: (_) => _moveToLogin(context),
          orElse: () {},
        );
      },
      child: _body(context),
    );
  }
}

extension _Widgets on SplashScreen {
  ///Creates the body of the screen
  Widget _body(BuildContext context) => Scaffold(
        backgroundColor: const Color(0xFF444444),
        body: Center(
          child: Text(
            _splashScreen,
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .headline3!
                .copyWith(color: Colors.white70),
          ),
        ),
      );
}

extension _Functions on SplashScreen {
  ///Change to the login screen
  Future<void> _moveToLogin(BuildContext context) async {
    Future.delayed(
      const Duration(milliseconds: 1500),
      () => AutoRouter.of(context).replace(const SignInRoute()),
    );
  }

  ///Change to the home screen
  Future<void> _moveToHome(BuildContext context, {required String name}) async {
    Future.delayed(
      const Duration(milliseconds: 1500),
      () => AutoRouter.of(context).replace(HomeRoute(displayName: name)),
    );
  }
}
