part of 'map_bloc.dart';

@freezed
class MapState with _$MapState {
  const factory MapState({
    required bool isLoading,
    required LatLng userLocation,
    required LatLng randomLocation,
    required bool shouldShowDirections,
    required Option<MapsFailure> failure,
    required Option<Directions> directions,
    required Map<MarkerId, Marker> markers,
  }) = _MapState;

  ///Initial state
  factory MapState.initial() => MapState(
        randomLocation: const LatLng(0, 0),
        userLocation: const LatLng(0, 0),
        markers: <MarkerId, Marker>{},
        shouldShowDirections: false,
        directions: none(),
        isLoading: true,
        failure: none(),
      );
}
