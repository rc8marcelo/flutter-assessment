import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

import 'auth_failure.dart';
import 'firebase_user.dart';

const _sessionBox = 'session';

abstract class IAuthRepo {
  ///Calls the Google Sign in workflow
  Future<Either<AuthFailure, FirebaseUser>> signInWithGoogle();

  ///Calls the Facebook Sign in workflow
  Future<Either<AuthFailure, FirebaseUser>> signInWithFacebook();

  ///Calls firebaseAuth to sign in anonymously
  Future<Either<AuthFailure, FirebaseUser>> signInAnonymously();

  ///Gets the user from session storage.
  Future<Either<AuthFailure, FirebaseUser>> getUser();
}

@LazySingleton(as: IAuthRepo)
class AuthRepo implements IAuthRepo {
  final FirebaseAuth _firAuth;

  AuthRepo(this._firAuth);

  @override
  Future<Either<AuthFailure, FirebaseUser>> signInWithFacebook() async {
    try {
      // Trigger the sign-in flow
      final LoginResult loginResult = await FacebookAuth.instance.login();
      if (loginResult.status != LoginStatus.success) {
        return left(AuthFailure.signInFailed(loginResult.message!));
      } else if (loginResult.accessToken != null) {
        // Create a credential from the access token
        final OAuthCredential facebookAuthCredential =
            FacebookAuthProvider.credential(
          loginResult.accessToken!.token,
        );
        await _firAuth.signInWithCredential(facebookAuthCredential);
        final firebaseUser = await _saveUser();
        return right(firebaseUser);
      }
      return left(const AuthFailure.noAccessToken());
    } on Exception catch (e) {
      return left(AuthFailure.signInFailed(e.toString()));
    }
  }

  @override
  Future<Either<AuthFailure, FirebaseUser>> signInWithGoogle() async {
    try {
      // Trigger the authentication flow
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      if (googleUser != null) {
        // Obtain the auth details from the request
        final GoogleSignInAuthentication googleAuth =
            await googleUser.authentication;

        // Create a new credential
        final credential = GoogleAuthProvider.credential(
          accessToken: googleAuth.accessToken,
          idToken: googleAuth.idToken,
        );
        await _firAuth.signInWithCredential(credential);
        final firebaseUser = await _saveUser();
        return right(firebaseUser);
      }
      return left(const AuthFailure.noUser());
    } on Exception catch (e) {
      return left(AuthFailure.signInFailed(e.toString()));
    }
  }

  @override
  Future<Either<AuthFailure, FirebaseUser>> signInAnonymously() async {
    try {
      await _firAuth.signInAnonymously();
      final firebaseUser = await _saveUser();
      return right(firebaseUser);
    } on Exception catch (e) {
      return left(AuthFailure.signInFailed(e.toString()));
    }
  }

  @override
  Future<Either<AuthFailure, FirebaseUser>> getUser() async {
    try {
      final box = await Hive.openBox<FirebaseUser>(_sessionBox);
      final user = box.values.first;
      await box.close();
      return right(user);
    } on Exception catch (_) {
      return left(const AuthFailure.noUser());
    } on Error catch (_) {
      return left(const AuthFailure.noUser());
    }
  }

  ///Saves the created Firebase [User] into local database
  Future<FirebaseUser> _saveUser({bool isAnonymous = false}) async {
    final user = _firAuth.currentUser!;
    final firebaseUser = isAnonymous
        ? FirebaseUser.anonymous(user.uid)
        : FirebaseUser.fromFirebase(_firAuth.currentUser!);
    final box = await Hive.openBox<FirebaseUser>(_sessionBox);
    await box.add(firebaseUser);
    await box.close();
    return firebaseUser;
  }
}
