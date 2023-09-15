// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NewsApiResponse _$$_NewsApiResponseFromJson(Map<String, dynamic> json) =>
    _$_NewsApiResponse(
      totalResults: json['totalResults'] as int,
      status: json['status'] as String,
      articles: (json['articles'] as List<dynamic>)
          .map((e) => NewsArticle.fromJson(e as Map<String, dynamic>))
          .toList(),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$_NewsApiResponseToJson(_$_NewsApiResponse instance) =>
    <String, dynamic>{
      'totalResults': instance.totalResults,
      'status': instance.status,
      'articles': instance.articles,
      'message': instance.message,
    };
