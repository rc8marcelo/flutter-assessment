// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NewsApiResponse _$NewsApiResponseFromJson(Map<String, dynamic> json) {
  return _NewsApiResponse.fromJson(json);
}

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
      _$NewsApiResponseCopyWithImpl<$Res, NewsApiResponse>;
  @useResult
  $Res call(
      {int totalResults,
      String status,
      List<NewsArticle> articles,
      String? message});
}

/// @nodoc
class _$NewsApiResponseCopyWithImpl<$Res, $Val extends NewsApiResponse>
    implements $NewsApiResponseCopyWith<$Res> {
  _$NewsApiResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalResults = null,
    Object? status = null,
    Object? articles = null,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      totalResults: null == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      articles: null == articles
          ? _value.articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<NewsArticle>,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NewsApiResponseCopyWith<$Res>
    implements $NewsApiResponseCopyWith<$Res> {
  factory _$$_NewsApiResponseCopyWith(
          _$_NewsApiResponse value, $Res Function(_$_NewsApiResponse) then) =
      __$$_NewsApiResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int totalResults,
      String status,
      List<NewsArticle> articles,
      String? message});
}

/// @nodoc
class __$$_NewsApiResponseCopyWithImpl<$Res>
    extends _$NewsApiResponseCopyWithImpl<$Res, _$_NewsApiResponse>
    implements _$$_NewsApiResponseCopyWith<$Res> {
  __$$_NewsApiResponseCopyWithImpl(
      _$_NewsApiResponse _value, $Res Function(_$_NewsApiResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalResults = null,
    Object? status = null,
    Object? articles = null,
    Object? message = freezed,
  }) {
    return _then(_$_NewsApiResponse(
      totalResults: null == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      articles: null == articles
          ? _value._articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<NewsArticle>,
      message: freezed == message
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
      required final List<NewsArticle> articles,
      this.message})
      : _articles = articles,
        super._();

  factory _$_NewsApiResponse.fromJson(Map<String, dynamic> json) =>
      _$$_NewsApiResponseFromJson(json);

  @override
  final int totalResults;
  @override
  final String status;
  final List<NewsArticle> _articles;
  @override
  List<NewsArticle> get articles {
    if (_articles is EqualUnmodifiableListView) return _articles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_articles);
  }

  @override
  final String? message;

  @override
  String toString() {
    return 'NewsApiResponse(totalResults: $totalResults, status: $status, articles: $articles, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewsApiResponse &&
            (identical(other.totalResults, totalResults) ||
                other.totalResults == totalResults) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._articles, _articles) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, totalResults, status,
      const DeepCollectionEquality().hash(_articles), message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewsApiResponseCopyWith<_$_NewsApiResponse> get copyWith =>
      __$$_NewsApiResponseCopyWithImpl<_$_NewsApiResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NewsApiResponseToJson(
      this,
    );
  }
}

abstract class _NewsApiResponse extends NewsApiResponse {
  const factory _NewsApiResponse(
      {required final int totalResults,
      required final String status,
      required final List<NewsArticle> articles,
      final String? message}) = _$_NewsApiResponse;
  const _NewsApiResponse._() : super._();

  factory _NewsApiResponse.fromJson(Map<String, dynamic> json) =
      _$_NewsApiResponse.fromJson;

  @override
  int get totalResults;
  @override
  String get status;
  @override
  List<NewsArticle> get articles;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$_NewsApiResponseCopyWith<_$_NewsApiResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
