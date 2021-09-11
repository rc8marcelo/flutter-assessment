// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'news_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NewsApiResponse _$NewsApiResponseFromJson(Map<String, dynamic> json) {
  return _NewsApiResponse.fromJson(json);
}

/// @nodoc
class _$NewsApiResponseTearOff {
  const _$NewsApiResponseTearOff();

  _NewsApiResponse call(
      {required int totalResults,
      required String status,
      required List<NewsArticle> articles,
      String? message}) {
    return _NewsApiResponse(
      totalResults: totalResults,
      status: status,
      articles: articles,
      message: message,
    );
  }

  NewsApiResponse fromJson(Map<String, Object> json) {
    return NewsApiResponse.fromJson(json);
  }
}

/// @nodoc
const $NewsApiResponse = _$NewsApiResponseTearOff();

/// @nodoc
mixin _$NewsApiResponse {
  int get totalResults => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  List<NewsArticle> get articles => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewsApiResponseCopyWith<NewsApiResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsApiResponseCopyWith<$Res> {
  factory $NewsApiResponseCopyWith(
          NewsApiResponse value, $Res Function(NewsApiResponse) then) =
      _$NewsApiResponseCopyWithImpl<$Res>;
  $Res call(
      {int totalResults,
      String status,
      List<NewsArticle> articles,
      String? message});
}

/// @nodoc
class _$NewsApiResponseCopyWithImpl<$Res>
    implements $NewsApiResponseCopyWith<$Res> {
  _$NewsApiResponseCopyWithImpl(this._value, this._then);

  final NewsApiResponse _value;
  // ignore: unused_field
  final $Res Function(NewsApiResponse) _then;

  @override
  $Res call({
    Object? totalResults = freezed,
    Object? status = freezed,
    Object? articles = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      totalResults: totalResults == freezed
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      articles: articles == freezed
          ? _value.articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<NewsArticle>,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$NewsApiResponseCopyWith<$Res>
    implements $NewsApiResponseCopyWith<$Res> {
  factory _$NewsApiResponseCopyWith(
          _NewsApiResponse value, $Res Function(_NewsApiResponse) then) =
      __$NewsApiResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {int totalResults,
      String status,
      List<NewsArticle> articles,
      String? message});
}

/// @nodoc
class __$NewsApiResponseCopyWithImpl<$Res>
    extends _$NewsApiResponseCopyWithImpl<$Res>
    implements _$NewsApiResponseCopyWith<$Res> {
  __$NewsApiResponseCopyWithImpl(
      _NewsApiResponse _value, $Res Function(_NewsApiResponse) _then)
      : super(_value, (v) => _then(v as _NewsApiResponse));

  @override
  _NewsApiResponse get _value => super._value as _NewsApiResponse;

  @override
  $Res call({
    Object? totalResults = freezed,
    Object? status = freezed,
    Object? articles = freezed,
    Object? message = freezed,
  }) {
    return _then(_NewsApiResponse(
      totalResults: totalResults == freezed
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      articles: articles == freezed
          ? _value.articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<NewsArticle>,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NewsApiResponse extends _NewsApiResponse {
  const _$_NewsApiResponse(
      {required this.totalResults,
      required this.status,
      required this.articles,
      this.message})
      : super._();

  factory _$_NewsApiResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_NewsApiResponseFromJson(json);

  @override
  final int totalResults;
  @override
  final String status;
  @override
  final List<NewsArticle> articles;
  @override
  final String? message;

  @override
  String toString() {
    return 'NewsApiResponse(totalResults: $totalResults, status: $status, articles: $articles, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NewsApiResponse &&
            (identical(other.totalResults, totalResults) ||
                const DeepCollectionEquality()
                    .equals(other.totalResults, totalResults)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.articles, articles) ||
                const DeepCollectionEquality()
                    .equals(other.articles, articles)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(totalResults) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(articles) ^
      const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$NewsApiResponseCopyWith<_NewsApiResponse> get copyWith =>
      __$NewsApiResponseCopyWithImpl<_NewsApiResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_NewsApiResponseToJson(this);
  }
}

abstract class _NewsApiResponse extends NewsApiResponse {
  const factory _NewsApiResponse(
      {required int totalResults,
      required String status,
      required List<NewsArticle> articles,
      String? message}) = _$_NewsApiResponse;
  const _NewsApiResponse._() : super._();

  factory _NewsApiResponse.fromJson(Map<String, dynamic> json) =
      _$_NewsApiResponse.fromJson;

  @override
  int get totalResults => throw _privateConstructorUsedError;
  @override
  String get status => throw _privateConstructorUsedError;
  @override
  List<NewsArticle> get articles => throw _privateConstructorUsedError;
  @override
  String? get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$NewsApiResponseCopyWith<_NewsApiResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
