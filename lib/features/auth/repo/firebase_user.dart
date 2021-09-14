import 'package:firebase_auth/firebase_auth.dart';
import 'package:hive/hive.dart';
part 'firebase_user.g.dart';

const _noName = 'No name';
const _anonymous = 'Anonymous';
const _anonymousEmail = 'No Email';

@HiveType(typeId: 0)
class FirebaseUser extends HiveObject {
  ///User's ID
  @HiveField(0)
  String id;

  ///User's Name
  @HiveField(1)
  String name;

  ///User's Email
  @HiveField(2)
  String email;

  //User data taken from Firebase Authenticaion
  FirebaseUser({
    required this.id,
    required this.name,
    required this.email,
  });

  ///Creates a user for anonymous login
  factory FirebaseUser.anonymous(String id) => FirebaseUser(
        id: id,
        name: _anonymous,
        email: _anonymousEmail,
      );

  ///Creates a user given a firebase auth user
  factory FirebaseUser.fromFirebase(User firAuthUser) => FirebaseUser(
        email: firAuthUser.email ?? _anonymousEmail,
        name: firAuthUser.displayName ?? _noName,
        id: firAuthUser.uid,
      );
}
