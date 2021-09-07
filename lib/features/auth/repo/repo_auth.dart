import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';

import 'auth_failure.dart';

abstract class IAuthRepo {
  ///Calls the Google Sign in workflow
  Future<Option<AuthFailure>> signInWithGoogle();

  ///Calls the Facebook Sign in workflow
  Future<Option<AuthFailure>> signInWithFacebook();

  ///Calls firebaseAuth to sign in anonymously
  Future<Option<AuthFailure>> signInAnonymously();

  ///Check if the user is signed in
  bool get isUserSignedIn;
}

@LazySingleton(as: IAuthRepo)
class AuthRepo implements IAuthRepo {
  final FirebaseAuth _firAuth;

  AuthRepo(this._firAuth);

  @override
  Future<Option<AuthFailure>> signInWithFacebook() async {
    try {
      // Trigger the sign-in flow
      final LoginResult loginResult = await FacebookAuth.instance.login();
      if (loginResult.status != LoginStatus.success) {
        return some(AuthFailure.signInFailed(loginResult.message!));
      } else if (loginResult.accessToken != null) {
        // Create a credential from the access token
        final OAuthCredential facebookAuthCredential =
            FacebookAuthProvider.credential(
          loginResult.accessToken!.token,
        );
        await _firAuth.signInWithCredential(facebookAuthCredential);
        return none();
      }
      return some(const AuthFailure.noAccessToken());
    } on Exception catch (e) {
      return some(AuthFailure.signInFailed(e.toString()));
    }
  }

  @override
  Future<Option<AuthFailure>> signInWithGoogle() async {
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
        return none();
      }
      return some(const AuthFailure.noUser());
    } on Exception catch (e) {
      return some(AuthFailure.signInFailed(e.toString()));
    }
  }

  @override
  bool get isUserSignedIn => _firAuth.currentUser != null;

  @override
  Future<Option<AuthFailure>> signInAnonymously() async {
    try {
      await _firAuth.signInAnonymously();
      return none();
    } on Exception catch (e) {
      return some(AuthFailure.signInFailed(e.toString()));
    }
  }
}
