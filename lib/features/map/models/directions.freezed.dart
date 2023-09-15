// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'directions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Directions {
  LatLngBounds get bounds => throw _privateConstructorUsedError;
  List<PointLatLng> get polylinePoints => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DirectionsCopyWith<Directions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DirectionsCopyWith<$Res> {
  factory $DirectionsCopyWith(
          Directions value, $Res Function(Directions) then) =
      _$DirectionsCopyWithImpl<$Res, Directions>;
  @useResult
  $Res call({LatLngBounds bounds, List<PointLatLng> polylinePoints});
}

/// @nodoc
class _$DirectionsCopyWithImpl<$Res, $Val extends Directions>
    implements $DirectionsCopyWith<$Res> {
  _$DirectionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bounds = null,
    Object? polylinePoints = null,
  }) {
    return _then(_value.copyWith(
      bounds: null == bounds
          ? _value.bounds
          : bounds // ignore: cast_nullable_to_non_nullable
              as LatLngBounds,
      polylinePoints: null == polylinePoints
          ? _value.polylinePoints
          : polylinePoints // ignore: cast_nullable_to_non_nullable
              as List<PointLatLng>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DirectionsCopyWith<$Res>
    implements $DirectionsCopyWith<$Res> {
  factory _$$_DirectionsCopyWith(
          _$_Directions value, $Res Function(_$_Directions) then) =
      __$$_DirectionsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LatLngBounds bounds, List<PointLatLng> polylinePoints});
}

/// @nodoc
class __$$_DirectionsCopyWithImpl<$Res>
    extends _$DirectionsCopyWithImpl<$Res, _$_Directions>
    implements _$$_DirectionsCopyWith<$Res> {
  __$$_DirectionsCopyWithImpl(
      _$_Directions _value, $Res Function(_$_Directions) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bounds = null,
    Object? polylinePoints = null,
  }) {
    return _then(_$_Directions(
      bounds: null == bounds
          ? _value.bounds
          : bounds // ignore: cast_nullable_to_non_nullable
              as LatLngBounds,
      polylinePoints: null == polylinePoints
          ? _value._polylinePoints
          : polylinePoints // ignore: cast_nullable_to_non_nullable
              as List<PointLatLng>,
    ));
  }
}

/// @nodoc

class _$_Directions implements _Directions {
  const _$_Directions(
      {required this.bounds, required final List<PointLatLng> polylinePoints})
      : _polylinePoints = polylinePoints;

  @override
  final LatLngBounds bounds;
  final List<PointLatLng> _polylinePoints;
  @override
  List<PointLatLng> get polylinePoints {
    if (_polylinePoints is EqualUnmodifiableListView) return _polylinePoints;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_polylinePoints);
  }

  @override
  String toString() {
    return 'Directions(bounds: $bounds, polylinePoints: $polylinePoints)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Directions &&
            (identical(other.bounds, bounds) || other.bounds == bounds) &&
            const DeepCollectionEquality()
                .equals(other._polylinePoints, _polylinePoints));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bounds,
      const DeepCollectionEquality().hash(_polylinePoints));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DirectionsCopyWith<_$_Directions> get copyWith =>
      __$$_DirectionsCopyWithImpl<_$_Directions>(this, _$identity);
}

abstract class _Directions implements Directions {
  const factory _Directions(
      {required final LatLngBounds bounds,
      required final List<PointLatLng> polylinePoints}) = _$_Directions;

  @override
  LatLngBounds get bounds;
  @override
  List<PointLatLng> get polylinePoints;
  @override
  @JsonKey(ignore: true)
  _$$_DirectionsCopyWith<_$_Directions> get copyWith =>
      throw _privateConstructorUsedError;
}
