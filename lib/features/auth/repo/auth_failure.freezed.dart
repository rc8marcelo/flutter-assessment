// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'auth_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthFailureTearOff {
  const _$AuthFailureTearOff();

  _SignInFailed signInFailed(String message) {
    return _SignInFailed(
      message,
    );
  }

  _NoUser noUser() {
    return const _NoUser();
  }

  _NoAccessToken noAccessToken() {
    return const _NoAccessToken();
  }
}

/// @nodoc
const $AuthFailure = _$AuthFailureTearOff();

/// @nodoc
mixin _$AuthFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) signInFailed,
    required TResult Function() noUser,
    required TResult Function() noAccessToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? signInFailed,
    TResult Function()? noUser,
    TResult Function()? noAccessToken,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignInFailed value) signInFailed,
    required TResult Function(_NoUser value) noUser,
    required TResult Function(_NoAccessToken value) noAccessToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInFailed value)? signInFailed,
    TResult Function(_NoUser value)? noUser,
    TResult Function(_NoAccessToken value)? noAccessToken,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthFailureCopyWith<$Res> {
  factory $AuthFailureCopyWith(
          AuthFailure value, $Res Function(AuthFailure) then) =
      _$AuthFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthFailureCopyWithImpl<$Res> implements $AuthFailureCopyWith<$Res> {
  _$AuthFailureCopyWithImpl(this._value, this._then);

  final AuthFailure _value;
  // ignore: unused_field
  final $Res Function(AuthFailure) _then;
}

/// @nodoc
abstract class _$SignInFailedCopyWith<$Res> {
  factory _$SignInFailedCopyWith(
          _SignInFailed value, $Res Function(_SignInFailed) then) =
      __$SignInFailedCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$SignInFailedCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements _$SignInFailedCopyWith<$Res> {
  __$SignInFailedCopyWithImpl(
      _SignInFailed _value, $Res Function(_SignInFailed) _then)
      : super(_value, (v) => _then(v as _SignInFailed));

  @override
  _SignInFailed get _value => super._value as _SignInFailed;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_SignInFailed(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SignInFailed implements _SignInFailed {
  const _$_SignInFailed(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AuthFailure.signInFailed(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignInFailed &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$SignInFailedCopyWith<_SignInFailed> get copyWith =>
      __$SignInFailedCopyWithImpl<_SignInFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) signInFailed,
    required TResult Function() noUser,
    required TResult Function() noAccessToken,
  }) {
    return signInFailed(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? signInFailed,
    TResult Function()? noUser,
    TResult Function()? noAccessToken,
    required TResult orElse(),
  }) {
    if (signInFailed != null) {
      return signInFailed(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignInFailed value) signInFailed,
    required TResult Function(_NoUser value) noUser,
    required TResult Function(_NoAccessToken value) noAccessToken,
  }) {
    return signInFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInFailed value)? signInFailed,
    TResult Function(_NoUser value)? noUser,
    TResult Function(_NoAccessToken value)? noAccessToken,
    required TResult orElse(),
  }) {
    if (signInFailed != null) {
      return signInFailed(this);
    }
    return orElse();
  }
}

abstract class _SignInFailed implements AuthFailure {
  const factory _SignInFailed(String message) = _$_SignInFailed;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SignInFailedCopyWith<_SignInFailed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$NoUserCopyWith<$Res> {
  factory _$NoUserCopyWith(_NoUser value, $Res Function(_NoUser) then) =
      __$NoUserCopyWithImpl<$Res>;
}

/// @nodoc
class __$NoUserCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements _$NoUserCopyWith<$Res> {
  __$NoUserCopyWithImpl(_NoUser _value, $Res Function(_NoUser) _then)
      : super(_value, (v) => _then(v as _NoUser));

  @override
  _NoUser get _value => super._value as _NoUser;
}

/// @nodoc

class _$_NoUser implements _NoUser {
  const _$_NoUser();

  @override
  String toString() {
    return 'AuthFailure.noUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _NoUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) signInFailed,
    required TResult Function() noUser,
    required TResult Function() noAccessToken,
  }) {
    return noUser();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? signInFailed,
    TResult Function()? noUser,
    TResult Function()? noAccessToken,
    required TResult orElse(),
  }) {
    if (noUser != null) {
      return noUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignInFailed value) signInFailed,
    required TResult Function(_NoUser value) noUser,
    required TResult Function(_NoAccessToken value) noAccessToken,
  }) {
    return noUser(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInFailed value)? signInFailed,
    TResult Function(_NoUser value)? noUser,
    TResult Function(_NoAccessToken value)? noAccessToken,
    required TResult orElse(),
  }) {
    if (noUser != null) {
      return noUser(this);
    }
    return orElse();
  }
}

abstract class _NoUser implements AuthFailure {
  const factory _NoUser() = _$_NoUser;
}

/// @nodoc
abstract class _$NoAccessTokenCopyWith<$Res> {
  factory _$NoAccessTokenCopyWith(
          _NoAccessToken value, $Res Function(_NoAccessToken) then) =
      __$NoAccessTokenCopyWithImpl<$Res>;
}

/// @nodoc
class __$NoAccessTokenCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements _$NoAccessTokenCopyWith<$Res> {
  __$NoAccessTokenCopyWithImpl(
      _NoAccessToken _value, $Res Function(_NoAccessToken) _then)
      : super(_value, (v) => _then(v as _NoAccessToken));

  @override
  _NoAccessToken get _value => super._value as _NoAccessToken;
}

/// @nodoc

class _$_NoAccessToken implements _NoAccessToken {
  const _$_NoAccessToken();

  @override
  String toString() {
    return 'AuthFailure.noAccessToken()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _NoAccessToken);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) signInFailed,
    required TResult Function() noUser,
    required TResult Function() noAccessToken,
  }) {
    return noAccessToken();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? signInFailed,
    TResult Function()? noUser,
    TResult Function()? noAccessToken,
    required TResult orElse(),
  }) {
    if (noAccessToken != null) {
      return noAccessToken();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignInFailed value) signInFailed,
    required TResult Function(_NoUser value) noUser,
    required TResult Function(_NoAccessToken value) noAccessToken,
  }) {
    return noAccessToken(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInFailed value)? signInFailed,
    TResult Function(_NoUser value)? noUser,
    TResult Function(_NoAccessToken value)? noAccessToken,
    required TResult orElse(),
  }) {
    if (noAccessToken != null) {
      return noAccessToken(this);
    }
    return orElse();
  }
}

abstract class _NoAccessToken implements AuthFailure {
  const factory _NoAccessToken() = _$_NoAccessToken;
}
