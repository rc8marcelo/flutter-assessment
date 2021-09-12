import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../../../secrets.dart';
import '../models/dto_directions.dart';

part 'maps_client.g.dart';

//* key
const _origin = 'origin';
const _destination = 'destination';

//* URLs
const _baseUrl = 'https://maps.googleapis.com/';
const _newsHeadlinesEndpoint = 'maps/api/directions/json?key=$mapsApiKey';

@RestApi(baseUrl: _baseUrl)
abstract class MapsApiClient {
  ///Constructor that accepts an instance of [Dio].
  factory MapsApiClient(Dio dio) = _MapsApiClient;

  @GET(_newsHeadlinesEndpoint)
  Future<DirectionsDto> getDriections({
    //format is 'LatLng.latitude, LatLng.longitude'
    @Query(_origin) required String origin,
    @Query(_destination) required String destination,
  });
}
