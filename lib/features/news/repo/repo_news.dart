import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../core/api/dio_api.dart';
import '../models/news_article.dart';
import '../models/news_response.dart';
import 'news_failure.dart';

const _error = 'error';
const _ok = 'ok';

abstract class INewsRepo {
  ///Gets [NewsArticle]s from the api.
  ///
  ///    - Providing a [topic] will search for articles based on it, otherwise headlines will be fetched
  ///    - Optionally, [page] can be passed to get articles more than 100 if there are any
  Future<Either<NewsFailure, NewsApiResponse>> fetch({required int page});
}

@LazySingleton(as: INewsRepo)
class NewsRepo implements INewsRepo {
  ///Instance of [DioApi] for API consumption
  final DioApi _dioApi;
  const NewsRepo(this._dioApi);

  @override
  Future<Either<NewsFailure, NewsApiResponse>> fetch(
      {required int page}) async {
    try {
      final response = await _dioApi.newsClient.getHeadlines(page: page);
      if (response.status == _ok) {
        return right(response);
      } else if (response.status == _error) {
        return left(NewsFailure.error(response.message!));
      } else {
        return left(NewsFailure.unknown());
      }
    } on Exception catch (e) {
      return left(NewsFailure.unknown(message: e.toString()));
    }
  }
}
