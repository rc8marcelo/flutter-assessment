import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

part 'directions.freezed.dart';

@freezed
class Directions with _$Directions {
  const factory Directions({
    required LatLngBounds bounds,
    required List<PointLatLng> polylinePoints,
  }) = _Directions;

  ///Creates an empty [Directions] class
  factory Directions.empty() => Directions(
        bounds: LatLngBounds(
          southwest: const LatLng(0, 0),
          northeast: const LatLng(0, 0),
        ),
        polylinePoints: [],
      );
}
