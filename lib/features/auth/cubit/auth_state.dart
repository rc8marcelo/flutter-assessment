part of 'auth_cubit.dart';

@freezed
class AuthState with _$AuthState {
  ///Initial state
  const factory AuthState.initial() = _Initial;

  ///Loading state
  const factory AuthState.loading() = _Loading;

  ///Error state
  const factory AuthState.error(AuthFailure failure) = _Error;

  ///Successful sign in state
  const factory AuthState.signedIn(FirebaseUser user) = _SignedIn;
}
