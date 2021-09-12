import 'package:freezed_annotation/freezed_annotation.dart';

part 'maps_failure.freezed.dart';

@freezed
class MapsFailure with _$MapsFailure {
  ///A failure from calling the API
  const factory MapsFailure.noRoute() = NoRoute;

  const factory MapsFailure.noPermission() = NoPermission;

  ///Any other uncaught failures or exceptions
  const factory MapsFailure.unknown({@Default('') String message}) = Unknown;
}

extension MapsFailureFunctions on MapsFailure {
  ///Gets the message of the failure
  String get errorMessage => when(
        noRoute: () => 'No route found.',
        unknown: (msg) => 'Something wrong happened. $msg',
        noPermission: () => 'User didn\' give permission to use location',
      );
}
