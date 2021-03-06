import 'package:dio/dio.dart';
import '../../features/map/repo/maps_client.dart';
import '../../features/news/repo/news_client.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class DioApi {
  final Dio dio;

  ///Constructor for creating the client
  DioApi(this.dio);

  ///Gets a [NewsApiClient] with the proided [dio] instance
  NewsApiClient get newsClient => NewsApiClient(dio);

  ///Gets a [MapsApiClient] with the proided [dio] instance
  MapsApiClient get mapsClient => MapsApiClient(dio);
}
