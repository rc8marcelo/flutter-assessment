// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_article.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NewsArticle _$NewsArticleFromJson(Map<String, dynamic> json) {
  return _NewsArticle.fromJson(json);
}

/// @nodoc
mixin _$NewsArticle {
  String get url => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  NewsSource get source => throw _privateConstructorUsedError;
  DateTime get publishedAt => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get urlToImage => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  String? get author => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewsArticleCopyWith<NewsArticle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsArticleCopyWith<$Res> {
  factory $NewsArticleCopyWith(
          NewsArticle value, $Res Function(NewsArticle) then) =
      _$NewsArticleCopyWithImpl<$Res, NewsArticle>;
  @useResult
  $Res call(
      {String url,
      String title,
      NewsSource source,
      DateTime publishedAt,
      String? description,
      String? urlToImage,
      String? content,
      String? author});

  $NewsSourceCopyWith<$Res> get source;
}

/// @nodoc
class _$NewsArticleCopyWithImpl<$Res, $Val extends NewsArticle>
    implements $NewsArticleCopyWith<$Res> {
  _$NewsArticleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? title = null,
    Object? source = null,
    Object? publishedAt = null,
    Object? description = freezed,
    Object? urlToImage = freezed,
    Object? content = freezed,
    Object? author = freezed,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as NewsSource,
      publishedAt: null == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      urlToImage: freezed == urlToImage
          ? _value.urlToImage
          : urlToImage // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NewsSourceCopyWith<$Res> get source {
    return $NewsSourceCopyWith<$Res>(_value.source, (value) {
      return _then(_value.copyWith(source: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_NewsArticleCopyWith<$Res>
    implements $NewsArticleCopyWith<$Res> {
  factory _$$_NewsArticleCopyWith(
          _$_NewsArticle value, $Res Function(_$_NewsArticle) then) =
      __$$_NewsArticleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String url,
      String title,
      NewsSource source,
      DateTime publishedAt,
      String? description,
      String? urlToImage,
      String? content,
      String? author});

  @override
  $NewsSourceCopyWith<$Res> get source;
}

/// @nodoc
class __$$_NewsArticleCopyWithImpl<$Res>
    extends _$NewsArticleCopyWithImpl<$Res, _$_NewsArticle>
    implements _$$_NewsArticleCopyWith<$Res> {
  __$$_NewsArticleCopyWithImpl(
      _$_NewsArticle _value, $Res Function(_$_NewsArticle) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? title = null,
    Object? source = null,
    Object? publishedAt = null,
    Object? description = freezed,
    Object? urlToImage = freezed,
    Object? content = freezed,
    Object? author = freezed,
  }) {
    return _then(_$_NewsArticle(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as NewsSource,
      publishedAt: null == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      urlToImage: freezed == urlToImage
          ? _value.urlToImage
          : urlToImage // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NewsArticle extends _NewsArticle {
  _$_NewsArticle(
      {required this.url,
      required this.title,
      required this.source,
      required this.publishedAt,
      this.description,
      this.urlToImage,
      this.content,
      this.author})
      : super._();

  factory _$_NewsArticle.fromJson(Map<String, dynamic> json) =>
      _$$_NewsArticleFromJson(json);

  @override
  final String url;
  @override
  final String title;
  @override
  final NewsSource source;
  @override
  final DateTime publishedAt;
  @override
  final String? description;
  @override
  final String? urlToImage;
  @override
  final String? content;
  @override
  final String? author;

  @override
  String toString() {
    return 'NewsArticle(url: $url, title: $title, source: $source, publishedAt: $publishedAt, description: $description, urlToImage: $urlToImage, content: $content, author: $author)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewsArticle &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.publishedAt, publishedAt) ||
                other.publishedAt == publishedAt) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.urlToImage, urlToImage) ||
                other.urlToImage == urlToImage) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.author, author) || other.author == author));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url, title, source, publishedAt,
      description, urlToImage, content, author);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewsArticleCopyWith<_$_NewsArticle> get copyWith =>
      __$$_NewsArticleCopyWithImpl<_$_NewsArticle>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NewsArticleToJson(
      this,
    );
  }
}

abstract class _NewsArticle extends NewsArticle {
  factory _NewsArticle(
      {required final String url,
      required final String title,
      required final NewsSource source,
      required final DateTime publishedAt,
      final String? description,
      final String? urlToImage,
      final String? content,
      final String? author}) = _$_NewsArticle;
  _NewsArticle._() : super._();

  factory _NewsArticle.fromJson(Map<String, dynamic> json) =
      _$_NewsArticle.fromJson;

  @override
  String get url;
  @override
  String get title;
  @override
  NewsSource get source;
  @override
  DateTime get publishedAt;
  @override
  String? get description;
  @override
  String? get urlToImage;
  @override
  String? get content;
  @override
  String? get author;
  @override
  @JsonKey(ignore: true)
  _$$_NewsArticleCopyWith<_$_NewsArticle> get copyWith =>
      throw _privateConstructorUsedError;
}
