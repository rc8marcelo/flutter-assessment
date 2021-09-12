part of 'map_bloc.dart';

@freezed
class MapEvent with _$MapEvent {
  ///Calls the location package to get the current user location and request permission if necessary
  const factory MapEvent.getUserLocation() = _GetUserLocation;

  ///Gets a random location 10km from the radius of the user's current location
  const factory MapEvent.getRandomLocationTapped() = _GetRandomLocationTapped;

  ///Ge the directions to [destination] from [start]
  const factory MapEvent.getDirectionsTapped() = _GetDirectionsTapped;
}
