// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'dto_directions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DirectionsDto _$DirectionsDtoFromJson(Map<String, dynamic> json) {
  return _DirectionsDto.fromJson(json);
}

/// @nodoc
class _$DirectionsDtoTearOff {
  const _$DirectionsDtoTearOff();

  _DirectionsDto call(
      {required List<Map<String, dynamic>> routes, required String status}) {
    return _DirectionsDto(
      routes: routes,
      status: status,
    );
  }

  DirectionsDto fromJson(Map<String, Object> json) {
    return DirectionsDto.fromJson(json);
  }
}

/// @nodoc
const $DirectionsDto = _$DirectionsDtoTearOff();

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
      _$DirectionsDtoCopyWithImpl<$Res>;
  $Res call({List<Map<String, dynamic>> routes, String status});
}

/// @nodoc
class _$DirectionsDtoCopyWithImpl<$Res>
    implements $DirectionsDtoCopyWith<$Res> {
  _$DirectionsDtoCopyWithImpl(this._value, this._then);

  final DirectionsDto _value;
  // ignore: unused_field
  final $Res Function(DirectionsDto) _then;

  @override
  $Res call({
    Object? routes = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      routes: routes == freezed
          ? _value.routes
          : routes // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$DirectionsDtoCopyWith<$Res>
    implements $DirectionsDtoCopyWith<$Res> {
  factory _$DirectionsDtoCopyWith(
          _DirectionsDto value, $Res Function(_DirectionsDto) then) =
      __$DirectionsDtoCopyWithImpl<$Res>;
  @override
  $Res call({List<Map<String, dynamic>> routes, String status});
}

/// @nodoc
class __$DirectionsDtoCopyWithImpl<$Res>
    extends _$DirectionsDtoCopyWithImpl<$Res>
    implements _$DirectionsDtoCopyWith<$Res> {
  __$DirectionsDtoCopyWithImpl(
      _DirectionsDto _value, $Res Function(_DirectionsDto) _then)
      : super(_value, (v) => _then(v as _DirectionsDto));

  @override
  _DirectionsDto get _value => super._value as _DirectionsDto;

  @override
  $Res call({
    Object? routes = freezed,
    Object? status = freezed,
  }) {
    return _then(_DirectionsDto(
      routes: routes == freezed
          ? _value.routes
          : routes // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DirectionsDto extends _DirectionsDto {
  const _$_DirectionsDto({required this.routes, required this.status})
      : super._();

  factory _$_DirectionsDto.fromJson(Map<String, dynamic> json) =>
      _$_$_DirectionsDtoFromJson(json);

  @override
  final List<Map<String, dynamic>> routes;
  @override
  final String status;

  @override
  String toString() {
    return 'DirectionsDto(routes: $routes, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DirectionsDto &&
            (identical(other.routes, routes) ||
                const DeepCollectionEquality().equals(other.routes, routes)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(routes) ^
      const DeepCollectionEquality().hash(status);

  @JsonKey(ignore: true)
  @override
  _$DirectionsDtoCopyWith<_DirectionsDto> get copyWith =>
      __$DirectionsDtoCopyWithImpl<_DirectionsDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DirectionsDtoToJson(this);
  }
}

abstract class _DirectionsDto extends DirectionsDto {
  const factory _DirectionsDto(
      {required List<Map<String, dynamic>> routes,
      required String status}) = _$_DirectionsDto;
  const _DirectionsDto._() : super._();

  factory _DirectionsDto.fromJson(Map<String, dynamic> json) =
      _$_DirectionsDto.fromJson;

  @override
  List<Map<String, dynamic>> get routes => throw _privateConstructorUsedError;
  @override
  String get status => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DirectionsDtoCopyWith<_DirectionsDto> get copyWith =>
      throw _privateConstructorUsedError;
}
