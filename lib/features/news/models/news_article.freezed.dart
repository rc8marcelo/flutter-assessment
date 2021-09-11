// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'news_article.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NewsArticle _$NewsArticleFromJson(Map<String, dynamic> json) {
  return _NewsArticle.fromJson(json);
}

/// @nodoc
class _$NewsArticleTearOff {
  const _$NewsArticleTearOff();

  _NewsArticle call(
      {required String url,
      required String title,
      required NewsSource source,
      required DateTime publishedAt,
      String? description,
      String? urlToImage,
      String? content,
      String? author}) {
    return _NewsArticle(
      url: url,
      title: title,
      source: source,
      publishedAt: publishedAt,
      description: description,
      urlToImage: urlToImage,
      content: content,
      author: author,
    );
  }

  NewsArticle fromJson(Map<String, Object> json) {
    return NewsArticle.fromJson(json);
  }
}

/// @nodoc
const $NewsArticle = _$NewsArticleTearOff();

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
      _$NewsArticleCopyWithImpl<$Res>;
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
class _$NewsArticleCopyWithImpl<$Res> implements $NewsArticleCopyWith<$Res> {
  _$NewsArticleCopyWithImpl(this._value, this._then);

  final NewsArticle _value;
  // ignore: unused_field
  final $Res Function(NewsArticle) _then;

  @override
  $Res call({
    Object? url = freezed,
    Object? title = freezed,
    Object? source = freezed,
    Object? publishedAt = freezed,
    Object? description = freezed,
    Object? urlToImage = freezed,
    Object? content = freezed,
    Object? author = freezed,
  }) {
    return _then(_value.copyWith(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      source: source == freezed
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as NewsSource,
      publishedAt: publishedAt == freezed
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      urlToImage: urlToImage == freezed
          ? _value.urlToImage
          : urlToImage // ignore: cast_nullable_to_non_nullable
              as String?,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $NewsSourceCopyWith<$Res> get source {
    return $NewsSourceCopyWith<$Res>(_value.source, (value) {
      return _then(_value.copyWith(source: value));
    });
  }
}

/// @nodoc
abstract class _$NewsArticleCopyWith<$Res>
    implements $NewsArticleCopyWith<$Res> {
  factory _$NewsArticleCopyWith(
          _NewsArticle value, $Res Function(_NewsArticle) then) =
      __$NewsArticleCopyWithImpl<$Res>;
  @override
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
class __$NewsArticleCopyWithImpl<$Res> extends _$NewsArticleCopyWithImpl<$Res>
    implements _$NewsArticleCopyWith<$Res> {
  __$NewsArticleCopyWithImpl(
      _NewsArticle _value, $Res Function(_NewsArticle) _then)
      : super(_value, (v) => _then(v as _NewsArticle));

  @override
  _NewsArticle get _value => super._value as _NewsArticle;

  @override
  $Res call({
    Object? url = freezed,
    Object? title = freezed,
    Object? source = freezed,
    Object? publishedAt = freezed,
    Object? description = freezed,
    Object? urlToImage = freezed,
    Object? content = freezed,
    Object? author = freezed,
  }) {
    return _then(_NewsArticle(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      source: source == freezed
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as NewsSource,
      publishedAt: publishedAt == freezed
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      urlToImage: urlToImage == freezed
          ? _value.urlToImage
          : urlToImage // ignore: cast_nullable_to_non_nullable
              as String?,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      author: author == freezed
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
      _$_$_NewsArticleFromJson(json);

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
        (other is _NewsArticle &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.source, source) ||
                const DeepCollectionEquality().equals(other.source, source)) &&
            (identical(other.publishedAt, publishedAt) ||
                const DeepCollectionEquality()
                    .equals(other.publishedAt, publishedAt)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.urlToImage, urlToImage) ||
                const DeepCollectionEquality()
                    .equals(other.urlToImage, urlToImage)) &&
            (identical(other.content, content) ||
                const DeepCollectionEquality()
                    .equals(other.content, content)) &&
            (identical(other.author, author) ||
                const DeepCollectionEquality().equals(other.author, author)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(source) ^
      const DeepCollectionEquality().hash(publishedAt) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(urlToImage) ^
      const DeepCollectionEquality().hash(content) ^
      const DeepCollectionEquality().hash(author);

  @JsonKey(ignore: true)
  @override
  _$NewsArticleCopyWith<_NewsArticle> get copyWith =>
      __$NewsArticleCopyWithImpl<_NewsArticle>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_NewsArticleToJson(this);
  }
}

abstract class _NewsArticle extends NewsArticle {
  factory _NewsArticle(
      {required String url,
      required String title,
      required NewsSource source,
      required DateTime publishedAt,
      String? description,
      String? urlToImage,
      String? content,
      String? author}) = _$_NewsArticle;
  _NewsArticle._() : super._();

  factory _NewsArticle.fromJson(Map<String, dynamic> json) =
      _$_NewsArticle.fromJson;

  @override
  String get url => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  NewsSource get source => throw _privateConstructorUsedError;
  @override
  DateTime get publishedAt => throw _privateConstructorUsedError;
  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  String? get urlToImage => throw _privateConstructorUsedError;
  @override
  String? get content => throw _privateConstructorUsedError;
  @override
  String? get author => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$NewsArticleCopyWith<_NewsArticle> get copyWith =>
      throw _privateConstructorUsedError;
}
