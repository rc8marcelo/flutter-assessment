import 'package:dio/dio.dart';
import 'package:flutter_assessment/features/news/models/news_response.dart';
import 'package:retrofit/http.dart';

part 'news_client.g.dart';

//* key
const _key = '9b59bf9bb2d34e128ee2c3bdbea925bf';
const _page = 'page';
const _query = 'q';

//* URLs
const _baseUrl = 'https://newsapi.org/';
const _newsHeadlinesEndpoint = 'v2/top-headlines?apiKey=$_key&country=ph';
const _everythingEndpoint = 'v2/everything?apiKey=$_key';

@RestApi(baseUrl: _baseUrl)
abstract class NewsApiClient {
  ///Constructor that accepts an instance of [Dio].
  factory NewsApiClient(Dio dio) = _NewsApiClient;

  @GET(_newsHeadlinesEndpoint)
  Future<NewsApiResponse> getHeadlines({
    @Query(_page) int page = 1,
  });
  @GET(_everythingEndpoint)
  Future<NewsApiResponse> getEverything({
    @Query(_query) required String topic,
    @Query(_page) int page = 1,
  });
}
