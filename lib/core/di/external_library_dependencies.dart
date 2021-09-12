import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:location/location.dart';

@module
abstract class ExternalLibraryDependencies {
  ///FirAuth instance for DI
  FirebaseAuth get firAuth => FirebaseAuth.instance;

  ///Instance of [Dio]
  @lazySingleton
  Dio get dioInstance => Dio();

  ///Instance of location
  @lazySingleton
  Location get location => Location();
}
