import 'package:auth_buttons/auth_buttons.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_assessment/core/routing/router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/widgets/text_snackbar.dart';
import 'cubit/auth_cubit.dart';
import 'repo/auth_failure.dart';

const _title = 'Coderbyte Technical Assessment';
const _anonSignIn = 'Anonymous Sign In';
const _msgSignIn = 'Login';

@RoutePage()
class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(_title),
      ),
      body: BlocListener<AuthCubit, AuthState>(
        listener: _listenForStateChanges,
        child: _body(),
      ),
    );
  }
}

extension _Functions on SignInScreen {
  ///Listens for changes in [state] and act accordingly
  void _listenForStateChanges(BuildContext context, AuthState state) {
    state.maybeWhen(
      signedIn: (user) =>
          AutoRouter.of(context).replace(HomeRoute(displayName: user.name)),
      error: (failure) => ScaffoldMessenger.of(context).showSnackBar(
        TextSnackbar(failure.errorMessage),
      ),
      orElse: () {},
    );
  }
}

extension _Widgets on SignInScreen {
  ///Creates the UI for the screen's body
  Widget _body() => Builder(
        builder: (context) {
          return Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 32,
              vertical: 16,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  _msgSignIn,
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
                ),
                const SizedBox(height: 16),
                GoogleAuthButton(onPressed: () async {
                  await context.read<AuthCubit>().signInWithGoogle();
                }),
                const SizedBox(height: 16),
                GoogleAuthButton(
                  onPressed: () async {
                    await context.read<AuthCubit>().signInAnonymously();
                  },
                  text: _anonSignIn,
                ),
                const SizedBox(height: 16),
                FacebookAuthButton(onPressed: () async {
                  await context.read<AuthCubit>().signInWithFacebook();
                }),
                const SizedBox(height: 16),
                const SizedBox(height: 16),
                _loader(),
              ],
            ),
          );
        },
      );

  ///Loader
  Widget _loader() => BlocBuilder<AuthCubit, AuthState>(
        builder: (_, state) => state.maybeWhen(
          loading: () => const Center(child: CircularProgressIndicator()),
          orElse: () => Container(),
        ),
      );
}
