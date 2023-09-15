import 'package:dartz/dartz.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:location/location.dart';

import '../../../core/api/dio_api.dart';
import '../models/directions.dart';
import 'maps_failure.dart';

const _statusOk = 'OK';
const _errNoRoute = 'No routes found.';

abstract class IMapsRepo {
  ///Gets the user's current location using the [Location] package
  Future<Either<MapsFailure, LatLng>> getUserLocation();

  ///Given an [origin] and [destination], get the direction using Google's Direction API
  Future<Either<MapsFailure, Directions>> getDirections({
    required String origin,
    required String destination,
  });
}

@LazySingleton(as: IMapsRepo)
class MapsRepo implements IMapsRepo {
  ///Instance of [DioApi] for API consumption
  final DioApi _dioApi;

  ///Instance of [Location]
  final Location _location;

  const MapsRepo(
    this._dioApi,
    this._location,
  );

  @override
  Future<Either<MapsFailure, Directions>> getDirections({
    required String origin,
    required String destination,
  }) async {
    try {
      final response = await _dioApi.mapsClient.getDriections(
        origin: origin,
        destination: destination,
      );
      if (response.status == _statusOk) {
        final directions = response.toModel();
        return right(directions);
      } else {
        return left(const MapsFailure.unknown());
      }
    } on Exception catch (e) {
      return left(MapsFailure.unknown(message: e.toString()));
    }
  }

  @override
  Future<Either<MapsFailure, LatLng>> getUserLocation() async {
    try {
      bool isServiceEnabled;
      PermissionStatus arePermissionsGranted;

      isServiceEnabled = await _location.serviceEnabled();
      if (!isServiceEnabled) {
        isServiceEnabled = await _location.requestService();
        if (!isServiceEnabled) {
          return left(const MapsFailure.noPermission());
        }
      }

      arePermissionsGranted = await _location.hasPermission();
      if (arePermissionsGranted == PermissionStatus.denied) {
        arePermissionsGranted = await _location.requestPermission();
        if (arePermissionsGranted != PermissionStatus.granted) {
          return left(const MapsFailure.noPermission());
        }
      }
      final currentLocation = await _location.getLocation();
      final currentLocationCoords = LatLng(
        currentLocation.latitude!,
        currentLocation.longitude!,
      );
      return right(currentLocationCoords);
    } on Exception catch (e) {
      if (e.toString().contains(_errNoRoute)) {
        return left(const MapsFailure.noRoute());
      }
      return left(MapsFailure.unknown(message: e.toString()));
    }
  }
}
