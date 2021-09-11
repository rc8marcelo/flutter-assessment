import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_auth_buttons/social_auth_buttons.dart';

import '../../core/di/injection.dart';
import '../../core/routing/router.gr.dart';
import '../../core/widgets/text_snackbar.dart';
import 'cubit/auth_cubit.dart';
import 'repo/auth_failure.dart';

const _title = 'Coderbyte Technical Assessment';
const _anonSignIn = 'Anonymous Sign In';
const _msgSignIn = 'Login';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => locator<AuthCubit>()..checkIfUserIsSignedIn(),
      child: Scaffold(
        appBar: AppBar(
          title: Text(_title),
        ),
        body: BlocListener<AuthCubit, AuthState>(
          listener: _listenForStateChanges,
          child: _body(),
        ),
      ),
    );
  }
}

extension _Functions on SignInScreen {
  ///Listens for changes in [state] and act accordingly
  void _listenForStateChanges(BuildContext context, AuthState state) {
    state.maybeWhen(
      signedIn: () => AutoRouter.of(context).replace(HomeRoute()),
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
                SizedBox(height: 16),
                _loader(),
              ],
            ),
          );
        },
      );

  ///Loader
  Widget _loader() => BlocBuilder<AuthCubit, AuthState>(
        builder: (_, state) => state.maybeWhen(
          loading: () => Center(child: CircularProgressIndicator()),
          orElse: () => Container(),
        ),
      );
}
