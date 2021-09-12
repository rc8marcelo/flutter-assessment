import 'directions.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

part 'dto_directions.freezed.dart';
part 'dto_directions.g.dart';

const _errNoRoute = 'No routes found.';
const _keyBounds = 'bounds';
const _keyNe = 'northeast';
const _keySw = 'southwest';
const _keyLat = 'lat';
const _keyLng = 'lng';
const _keyPoly = 'overview_polyline';
const _keyPts = 'points';

///DTO representation of a [Department] model.
@freezed
class DirectionsDto with _$DirectionsDto {
  const DirectionsDto._();

  ///Constructor for creating a [DirectionsDto]
  const factory DirectionsDto({
    required List<Map<String, dynamic>> routes,
    required String status,
  }) = _DirectionsDto;

  ///Converts a Map<String, dynamic> [json] into a [DirectionsDto]
  factory DirectionsDto.fromJson(Map<String, dynamic> json) =>
      _$DirectionsDtoFromJson(json);

  ///Creates a [Directions] model from a DTO
  Directions toModel() {
    if (routes.isEmpty) {
      throw (_errNoRoute);
    } else {
      final data = Map<String, dynamic>.from(routes[0]);

      final northeast = data[_keyBounds][_keyNe];
      final southwest = data[_keyBounds][_keySw];
      final bounds = LatLngBounds(
        southwest: LatLng(
          southwest[_keyLat],
          southwest[_keyLng],
        ),
        northeast: LatLng(
          northeast[_keyLat],
          northeast[_keyLng],
        ),
      );

      return Directions(
        bounds: bounds,
        polylinePoints:
            PolylinePoints().decodePolyline(data[_keyPoly][_keyPts]),
      );
    }
  }
}
