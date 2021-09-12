// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_article.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NewsArticle _$_$_NewsArticleFromJson(Map<String, dynamic> json) {
  return _$_NewsArticle(
    url: json['url'] as String,
    title: json['title'] as String,
    source: NewsSource.fromJson(json['source'] as Map<String, dynamic>),
    publishedAt: DateTime.parse(json['publishedAt'] as String),
    description: json['description'] as String?,
    urlToImage: json['urlToImage'] as String?,
    content: json['content'] as String?,
    author: json['author'] as String?,
  );
}

Map<String, dynamic> _$_$_NewsArticleToJson(_$_NewsArticle instance) =>
    <String, dynamic>{
      'url': instance.url,
      'title': instance.title,
      'source': instance.source,
      'publishedAt': instance.publishedAt.toIso8601String(),
      'description': instance.description,
      'urlToImage': instance.urlToImage,
      'content': instance.content,
      'author': instance.author,
    };
