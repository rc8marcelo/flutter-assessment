// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'news_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NewsStateTearOff {
  const _$NewsStateTearOff();

  _NewsState call(
      {required KtList<NewsArticle> articles,
      required Option<NewsFailure> failure,
      required int totalArticles,
      required int currentPage,
      required bool isLoading}) {
    return _NewsState(
      articles: articles,
      failure: failure,
      totalArticles: totalArticles,
      currentPage: currentPage,
      isLoading: isLoading,
    );
  }
}

/// @nodoc
const $NewsState = _$NewsStateTearOff();

/// @nodoc
mixin _$NewsState {
  KtList<NewsArticle> get articles => throw _privateConstructorUsedError;
  Option<NewsFailure> get failure => throw _privateConstructorUsedError;
  int get totalArticles => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewsStateCopyWith<NewsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsStateCopyWith<$Res> {
  factory $NewsStateCopyWith(NewsState value, $Res Function(NewsState) then) =
      _$NewsStateCopyWithImpl<$Res>;
  $Res call(
      {KtList<NewsArticle> articles,
      Option<NewsFailure> failure,
      int totalArticles,
      int currentPage,
      bool isLoading});
}

/// @nodoc
class _$NewsStateCopyWithImpl<$Res> implements $NewsStateCopyWith<$Res> {
  _$NewsStateCopyWithImpl(this._value, this._then);

  final NewsState _value;
  // ignore: unused_field
  final $Res Function(NewsState) _then;

  @override
  $Res call({
    Object? articles = freezed,
    Object? failure = freezed,
    Object? totalArticles = freezed,
    Object? currentPage = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      articles: articles == freezed
          ? _value.articles
          : articles // ignore: cast_nullable_to_non_nullable
              as KtList<NewsArticle>,
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Option<NewsFailure>,
      totalArticles: totalArticles == freezed
          ? _value.totalArticles
          : totalArticles // ignore: cast_nullable_to_non_nullable
              as int,
      currentPage: currentPage == freezed
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$NewsStateCopyWith<$Res> implements $NewsStateCopyWith<$Res> {
  factory _$NewsStateCopyWith(
          _NewsState value, $Res Function(_NewsState) then) =
      __$NewsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {KtList<NewsArticle> articles,
      Option<NewsFailure> failure,
      int totalArticles,
      int currentPage,
      bool isLoading});
}

/// @nodoc
class __$NewsStateCopyWithImpl<$Res> extends _$NewsStateCopyWithImpl<$Res>
    implements _$NewsStateCopyWith<$Res> {
  __$NewsStateCopyWithImpl(_NewsState _value, $Res Function(_NewsState) _then)
      : super(_value, (v) => _then(v as _NewsState));

  @override
  _NewsState get _value => super._value as _NewsState;

  @override
  $Res call({
    Object? articles = freezed,
    Object? failure = freezed,
    Object? totalArticles = freezed,
    Object? currentPage = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_NewsState(
      articles: articles == freezed
          ? _value.articles
          : articles // ignore: cast_nullable_to_non_nullable
              as KtList<NewsArticle>,
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Option<NewsFailure>,
      totalArticles: totalArticles == freezed
          ? _value.totalArticles
          : totalArticles // ignore: cast_nullable_to_non_nullable
              as int,
      currentPage: currentPage == freezed
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_NewsState implements _NewsState {
  const _$_NewsState(
      {required this.articles,
      required this.failure,
      required this.totalArticles,
      required this.currentPage,
      required this.isLoading});

  @override
  final KtList<NewsArticle> articles;
  @override
  final Option<NewsFailure> failure;
  @override
  final int totalArticles;
  @override
  final int currentPage;
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'NewsState(articles: $articles, failure: $failure, totalArticles: $totalArticles, currentPage: $currentPage, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NewsState &&
            (identical(other.articles, articles) ||
                const DeepCollectionEquality()
                    .equals(other.articles, articles)) &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality()
                    .equals(other.failure, failure)) &&
            (identical(other.totalArticles, totalArticles) ||
                const DeepCollectionEquality()
                    .equals(other.totalArticles, totalArticles)) &&
            (identical(other.currentPage, currentPage) ||
                const DeepCollectionEquality()
                    .equals(other.currentPage, currentPage)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(articles) ^
      const DeepCollectionEquality().hash(failure) ^
      const DeepCollectionEquality().hash(totalArticles) ^
      const DeepCollectionEquality().hash(currentPage) ^
      const DeepCollectionEquality().hash(isLoading);

  @JsonKey(ignore: true)
  @override
  _$NewsStateCopyWith<_NewsState> get copyWith =>
      __$NewsStateCopyWithImpl<_NewsState>(this, _$identity);
}

abstract class _NewsState implements NewsState {
  const factory _NewsState(
      {required KtList<NewsArticle> articles,
      required Option<NewsFailure> failure,
      required int totalArticles,
      required int currentPage,
      required bool isLoading}) = _$_NewsState;

  @override
  KtList<NewsArticle> get articles => throw _privateConstructorUsedError;
  @override
  Option<NewsFailure> get failure => throw _privateConstructorUsedError;
  @override
  int get totalArticles => throw _privateConstructorUsedError;
  @override
  int get currentPage => throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$NewsStateCopyWith<_NewsState> get copyWith =>
      throw _privateConstructorUsedError;
}
