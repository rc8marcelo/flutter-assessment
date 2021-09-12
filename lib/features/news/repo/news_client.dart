import 'package:dio/dio.dart';
import '../models/news_response.dart';
import 'package:retrofit/http.dart';

import '../../../secrets.dart';

part 'news_client.g.dart';

//* key
const _page = 'page';

//* URLs
const _baseUrl = 'https://newsapi.org/';
const _newsHeadlinesEndpoint = 'v2/top-headlines?apiKey=$newsApiKey&country=ph';

@RestApi(baseUrl: _baseUrl)
abstract class NewsApiClient {
  ///Constructor that accepts an instance of [Dio].
  factory NewsApiClient(Dio dio) = _NewsApiClient;

  @GET(_newsHeadlinesEndpoint)
  Future<NewsApiResponse> getHeadlines({
    @Query(_page) int page = 1,
  });
}
