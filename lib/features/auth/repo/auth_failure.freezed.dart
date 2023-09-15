// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? signInFailed,
    TResult? Function()? noUser,
    TResult? Function()? noAccessToken,
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignInFailed value)? signInFailed,
    TResult? Function(_NoUser value)? noUser,
    TResult? Function(_NoAccessToken value)? noAccessToken,
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
      _$AuthFailureCopyWithImpl<$Res, AuthFailure>;
}

/// @nodoc
class _$AuthFailureCopyWithImpl<$Res, $Val extends AuthFailure>
    implements $AuthFailureCopyWith<$Res> {
  _$AuthFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_SignInFailedCopyWith<$Res> {
  factory _$$_SignInFailedCopyWith(
          _$_SignInFailed value, $Res Function(_$_SignInFailed) then) =
      __$$_SignInFailedCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_SignInFailedCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res, _$_SignInFailed>
    implements _$$_SignInFailedCopyWith<$Res> {
  __$$_SignInFailedCopyWithImpl(
      _$_SignInFailed _value, $Res Function(_$_SignInFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_SignInFailed(
      null == message
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
        (other.runtimeType == runtimeType &&
            other is _$_SignInFailed &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignInFailedCopyWith<_$_SignInFailed> get copyWith =>
      __$$_SignInFailedCopyWithImpl<_$_SignInFailed>(this, _$identity);

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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? signInFailed,
    TResult? Function()? noUser,
    TResult? Function()? noAccessToken,
  }) {
    return signInFailed?.call(message);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignInFailed value)? signInFailed,
    TResult? Function(_NoUser value)? noUser,
    TResult? Function(_NoAccessToken value)? noAccessToken,
  }) {
    return signInFailed?.call(this);
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
  const factory _SignInFailed(final String message) = _$_SignInFailed;

  String get message;
  @JsonKey(ignore: true)
  _$$_SignInFailedCopyWith<_$_SignInFailed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NoUserCopyWith<$Res> {
  factory _$$_NoUserCopyWith(_$_NoUser value, $Res Function(_$_NoUser) then) =
      __$$_NoUserCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NoUserCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res, _$_NoUser>
    implements _$$_NoUserCopyWith<$Res> {
  __$$_NoUserCopyWithImpl(_$_NoUser _value, $Res Function(_$_NoUser) _then)
      : super(_value, _then);
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NoUser);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? signInFailed,
    TResult? Function()? noUser,
    TResult? Function()? noAccessToken,
  }) {
    return noUser?.call();
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignInFailed value)? signInFailed,
    TResult? Function(_NoUser value)? noUser,
    TResult? Function(_NoAccessToken value)? noAccessToken,
  }) {
    return noUser?.call(this);
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
abstract class _$$_NoAccessTokenCopyWith<$Res> {
  factory _$$_NoAccessTokenCopyWith(
          _$_NoAccessToken value, $Res Function(_$_NoAccessToken) then) =
      __$$_NoAccessTokenCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NoAccessTokenCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res, _$_NoAccessToken>
    implements _$$_NoAccessTokenCopyWith<$Res> {
  __$$_NoAccessTokenCopyWithImpl(
      _$_NoAccessToken _value, $Res Function(_$_NoAccessToken) _then)
      : super(_value, _then);
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NoAccessToken);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? signInFailed,
    TResult? Function()? noUser,
    TResult? Function()? noAccessToken,
  }) {
    return noAccessToken?.call();
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignInFailed value)? signInFailed,
    TResult? Function(_NoUser value)? noUser,
    TResult? Function(_NoAccessToken value)? noAccessToken,
  }) {
    return noAccessToken?.call(this);
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
