import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failure.freezed.dart';

@freezed
class AuthFailure with _$AuthFailure {
  ///Sign in failed
  const factory AuthFailure.signInFailed(String message) = _SignInFailed;

  ///No user found for Google
  const factory AuthFailure.noUser() = _NoUser;

  ///No access token found for Facebook
  const factory AuthFailure.noAccessToken() = _NoAccessToken;
}

extension AuthFailureFunctions on AuthFailure {
  ///Gets the message of the failure
  String get errorMessage => when(
        signInFailed: (msg) => 'Sign in failed. $msg',
        noAccessToken: () => 'No access token.',
        noUser: () => 'No user found.',
      );
}
