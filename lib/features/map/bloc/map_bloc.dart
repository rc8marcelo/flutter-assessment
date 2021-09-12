import 'dart:async';
import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:injectable/injectable.dart';

import '../models/directions.dart';
import '../repo/maps_failure.dart';
import '../repo/repo_maps.dart';

part 'map_bloc.freezed.dart';
part 'map_event.dart';
part 'map_state.dart';

const _destId = 'random_location';
const _currentLocId = 'current_location';

@injectable
class MapBloc extends Bloc<MapEvent, MapState> {
  final IMapsRepo _repo;
  MapBloc(this._repo) : super(MapState.initial());

  @override
  Stream<MapState> mapEventToState(
    MapEvent event,
  ) async* {
    yield* event.when(
      getUserLocation: _getUserLocation,
      getDirectionsTapped: _getDirectionsTapped,
      getRandomLocationTapped: _getRandomLocationTapped,
    );
  }

  ///Calls the repository  to get the user's location
  Stream<MapState> _getUserLocation() async* {
    final result = await _repo.getUserLocation();

    yield result.fold(
        (failure) => state.copyWith(
              failure: some(failure),
              isLoading: false,
            ), (userLocation) {
      final markers = _markLocation(
        id: _currentLocId,
        position: userLocation,
        icon: BitmapDescriptor.defaultMarker,
      );
      return state.copyWith(
        userLocation: userLocation,
        markers: markers,
        isLoading: false,
      );
    });
  }

  ///Gets a random location 10km from the radius of the user's current location
  Stream<MapState> _getRandomLocationTapped() async* {
    yield (state.copyWith(
      failure: none(),
      isLoading: true,
      shouldShowDirections: false,
    ));
    final randomLocation = LocationGenerator._generateRandomLocation(
      currentLocation: state.userLocation,
      radius: 10,
    );

    final startCoords =
        '${state.userLocation.latitude},${state.userLocation.longitude}';
    final destinationCoords =
        '${randomLocation.latitude},${randomLocation.longitude}';
    final directionResults = await _repo.getDirections(
      origin: startCoords,
      destination: destinationCoords,
    );
    yield directionResults.fold(
      (failure) => state.copyWith(
        failure: some(failure),
        isLoading: false,
      ),
      (directions) {
        final markers = _markLocation(
          id: _destId,
          position: randomLocation,
          icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
        );
        return state.copyWith(
          randomLocation: randomLocation,
          directions: some(directions),
          markers: markers,
          isLoading: false,
        );
      },
    );
  }

  ///Calls the repository to get the directions from [start] to [destination]
  Stream<MapState> _getDirectionsTapped() async* {
    yield (state.copyWith(shouldShowDirections: !state.shouldShowDirections));
  }

  ///Creates a [Marker] with [id] on the given [position]
  Map<MarkerId, Marker> _markLocation({
    required String id,
    required LatLng position,
    required BitmapDescriptor icon,
  }) {
    final MarkerId markerId = MarkerId(id);

    // creating a new MARKER
    final Marker marker = Marker(
      markerId: markerId,
      position: position,
      infoWindow: InfoWindow(title: id, snippet: '*'),
      icon: icon,
    );

    final markers = state.markers;
    markers[marker.markerId] = marker;

    return markers;
  }
}

class LocationGenerator {
  static final Random _random = Random();

  ///Generaetes a random coordinate location within [radius] (in km) of the [currentLocation]
  static LatLng _generateRandomLocation({
    required LatLng currentLocation,
    required double radius,
  }) {
    double a = currentLocation.longitude;
    double b = currentLocation.latitude;
    double r = radius / 111.32;

    // x must be in (a-r, a + r) range
    double xMin = a - r;
    double xMax = a + r;
    double xRange = xMax - xMin;

    // get a random x within the range
    double latitude = xMin + _random.nextDouble() * xRange;

    // circle equation is (y-b)^2 + (x-a)^2 = r^2
    // based on the above work out the range for y
    double yDelta = sqrt(pow(r, 2) - pow((latitude - a), 2));
    double yMax = b + yDelta;
    double yMin = b - yDelta;
    double yRange = yMax - yMin;
    // Get a random y within its range
    double longitude = yMin + _random.nextDouble() * yRange;

    // And finally return the location
    return LatLng(longitude, latitude);
  }
}
