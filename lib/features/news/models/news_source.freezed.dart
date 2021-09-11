// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'news_source.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NewsSource _$NewsSourceFromJson(Map<String, dynamic> json) {
  return _NewsSource.fromJson(json);
}

/// @nodoc
class _$NewsSourceTearOff {
  const _$NewsSourceTearOff();

  _NewsSource call({required String name}) {
    return _NewsSource(
      name: name,
    );
  }

  NewsSource fromJson(Map<String, Object> json) {
    return NewsSource.fromJson(json);
  }
}

/// @nodoc
const $NewsSource = _$NewsSourceTearOff();

/// @nodoc
mixin _$NewsSource {
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewsSourceCopyWith<NewsSource> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsSourceCopyWith<$Res> {
  factory $NewsSourceCopyWith(
          NewsSource value, $Res Function(NewsSource) then) =
      _$NewsSourceCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class _$NewsSourceCopyWithImpl<$Res> implements $NewsSourceCopyWith<$Res> {
  _$NewsSourceCopyWithImpl(this._value, this._then);

  final NewsSource _value;
  // ignore: unused_field
  final $Res Function(NewsSource) _then;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$NewsSourceCopyWith<$Res> implements $NewsSourceCopyWith<$Res> {
  factory _$NewsSourceCopyWith(
          _NewsSource value, $Res Function(_NewsSource) then) =
      __$NewsSourceCopyWithImpl<$Res>;
  @override
  $Res call({String name});
}

/// @nodoc
class __$NewsSourceCopyWithImpl<$Res> extends _$NewsSourceCopyWithImpl<$Res>
    implements _$NewsSourceCopyWith<$Res> {
  __$NewsSourceCopyWithImpl(
      _NewsSource _value, $Res Function(_NewsSource) _then)
      : super(_value, (v) => _then(v as _NewsSource));

  @override
  _NewsSource get _value => super._value as _NewsSource;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_NewsSource(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NewsSource extends _NewsSource {
  const _$_NewsSource({required this.name}) : super._();

  factory _$_NewsSource.fromJson(Map<String, dynamic> json) =>
      _$_$_NewsSourceFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'NewsSource(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NewsSource &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$NewsSourceCopyWith<_NewsSource> get copyWith =>
      __$NewsSourceCopyWithImpl<_NewsSource>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_NewsSourceToJson(this);
  }
}

abstract class _NewsSource extends NewsSource {
  const factory _NewsSource({required String name}) = _$_NewsSource;
  const _NewsSource._() : super._();

  factory _NewsSource.fromJson(Map<String, dynamic> json) =
      _$_NewsSource.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$NewsSourceCopyWith<_NewsSource> get copyWith =>
      throw _privateConstructorUsedError;
}
