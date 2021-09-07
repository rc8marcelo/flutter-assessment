import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_assessment/features/auth/repo/auth_failure.dart';
import 'package:flutter_assessment/features/auth/repo/repo_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

@injectable
class AuthCubit extends Cubit<AuthState> {
  final IAuthRepo _repo;
  AuthCubit(this._repo) : super(const AuthState.initial());

  ///Calls the repository to check if the user is signed in
  void checkIfUserIsSignedIn() => emit(
        _repo.isUserSignedIn
            ? const AuthState.signedIn()
            : const AuthState.initial(),
      );

  ///Calls the repository to sign in with Google
  Future<void> signInWithGoogle() async {
    emit(const AuthState.loading());
    final result = await _repo.signInWithGoogle();
    emit(const AuthState.initial());
    result.fold(
      () => emit(const AuthState.signedIn()),
      (failure) => AuthState.error(failure),
    );
  }

  ///Calls the repository to sign in with Facebook
  Future<void> signInWithFacebook() async {
    emit(const AuthState.loading());
    final result = await _repo.signInWithFacebook();
    emit(const AuthState.initial());
    result.fold(
      () => emit(const AuthState.signedIn()),
      (failure) => AuthState.error(failure),
    );
  }

  ///Calls the repository to sign in with Facebook
  Future<void> signInAnonymously() async {
    emit(const AuthState.loading());
    final result = await _repo.signInAnonymously();
    emit(const AuthState.initial());
    result.fold(
      () => emit(const AuthState.signedIn()),
      (failure) => AuthState.error(failure),
    );
  }
}
