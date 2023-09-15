// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dto_directions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DirectionsDto _$DirectionsDtoFromJson(Map<String, dynamic> json) {
  return _DirectionsDto.fromJson(json);
}

/// @nodoc
mixin _$DirectionsDto {
  List<Map<String, dynamic>> get routes => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DirectionsDtoCopyWith<DirectionsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DirectionsDtoCopyWith<$Res> {
  factory $DirectionsDtoCopyWith(
          DirectionsDto value, $Res Function(DirectionsDto) then) =
      _$DirectionsDtoCopyWithImpl<$Res, DirectionsDto>;
  @useResult
  $Res call({List<Map<String, dynamic>> routes, String status});
}

/// @nodoc
class _$DirectionsDtoCopyWithImpl<$Res, $Val extends DirectionsDto>
    implements $DirectionsDtoCopyWith<$Res> {
  _$DirectionsDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? routes = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      routes: null == routes
          ? _value.routes
          : routes // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DirectionsDtoCopyWith<$Res>
    implements $DirectionsDtoCopyWith<$Res> {
  factory _$$_DirectionsDtoCopyWith(
          _$_DirectionsDto value, $Res Function(_$_DirectionsDto) then) =
      __$$_DirectionsDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Map<String, dynamic>> routes, String status});
}

/// @nodoc
class __$$_DirectionsDtoCopyWithImpl<$Res>
    extends _$DirectionsDtoCopyWithImpl<$Res, _$_DirectionsDto>
    implements _$$_DirectionsDtoCopyWith<$Res> {
  __$$_DirectionsDtoCopyWithImpl(
      _$_DirectionsDto _value, $Res Function(_$_DirectionsDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? routes = null,
    Object? status = null,
  }) {
    return _then(_$_DirectionsDto(
      routes: null == routes
          ? _value._routes
          : routes // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DirectionsDto extends _DirectionsDto {
  const _$_DirectionsDto(
      {required final List<Map<String, dynamic>> routes, required this.status})
      : _routes = routes,
        super._();

  factory _$_DirectionsDto.fromJson(Map<String, dynamic> json) =>
      _$$_DirectionsDtoFromJson(json);

  final List<Map<String, dynamic>> _routes;
  @override
  List<Map<String, dynamic>> get routes {
    if (_routes is EqualUnmodifiableListView) return _routes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_routes);
  }

  @override
  final String status;

  @override
  String toString() {
    return 'DirectionsDto(routes: $routes, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DirectionsDto &&
            const DeepCollectionEquality().equals(other._routes, _routes) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_routes), status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DirectionsDtoCopyWith<_$_DirectionsDto> get copyWith =>
      __$$_DirectionsDtoCopyWithImpl<_$_DirectionsDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DirectionsDtoToJson(
      this,
    );
  }
}

abstract class _DirectionsDto extends DirectionsDto {
  const factory _DirectionsDto(
      {required final List<Map<String, dynamic>> routes,
      required final String status}) = _$_DirectionsDto;
  const _DirectionsDto._() : super._();

  factory _DirectionsDto.fromJson(Map<String, dynamic> json) =
      _$_DirectionsDto.fromJson;

  @override
  List<Map<String, dynamic>> get routes;
  @override
  String get status;
  @override
  @JsonKey(ignore: true)
  _$$_DirectionsDtoCopyWith<_$_DirectionsDto> get copyWith =>
      throw _privateConstructorUsedError;
}
