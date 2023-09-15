// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_source.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NewsSource _$NewsSourceFromJson(Map<String, dynamic> json) {
  return _NewsSource.fromJson(json);
}

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
      _$NewsSourceCopyWithImpl<$Res, NewsSource>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$NewsSourceCopyWithImpl<$Res, $Val extends NewsSource>
    implements $NewsSourceCopyWith<$Res> {
  _$NewsSourceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NewsSourceCopyWith<$Res>
    implements $NewsSourceCopyWith<$Res> {
  factory _$$_NewsSourceCopyWith(
          _$_NewsSource value, $Res Function(_$_NewsSource) then) =
      __$$_NewsSourceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$_NewsSourceCopyWithImpl<$Res>
    extends _$NewsSourceCopyWithImpl<$Res, _$_NewsSource>
    implements _$$_NewsSourceCopyWith<$Res> {
  __$$_NewsSourceCopyWithImpl(
      _$_NewsSource _value, $Res Function(_$_NewsSource) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$_NewsSource(
      name: null == name
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
      _$$_NewsSourceFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'NewsSource(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewsSource &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewsSourceCopyWith<_$_NewsSource> get copyWith =>
      __$$_NewsSourceCopyWithImpl<_$_NewsSource>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NewsSourceToJson(
      this,
    );
  }
}

abstract class _NewsSource extends NewsSource {
  const factory _NewsSource({required final String name}) = _$_NewsSource;
  const _NewsSource._() : super._();

  factory _NewsSource.fromJson(Map<String, dynamic> json) =
      _$_NewsSource.fromJson;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_NewsSourceCopyWith<_$_NewsSource> get copyWith =>
      throw _privateConstructorUsedError;
}
