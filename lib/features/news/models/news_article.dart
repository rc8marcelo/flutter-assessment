import 'package:freezed_annotation/freezed_annotation.dart';

import 'news_source.dart';

part 'news_article.freezed.dart';
part 'news_article.g.dart';

@freezed
class NewsArticle with _$NewsArticle {
  const NewsArticle._();

  factory NewsArticle({
    required String url,
    required String title,
    required NewsSource source,
    required DateTime publishedAt,
    String? description,
    String? urlToImage,
    String? content,
    String? author,
  }) = _NewsArticle;

  ///Creates a [NewsArticle] model from [json]
  factory NewsArticle.fromJson(Map<String, dynamic> json) =>
      _$NewsArticleFromJson(json);
}
