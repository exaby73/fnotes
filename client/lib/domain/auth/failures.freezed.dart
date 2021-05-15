// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthFailure _$AuthFailureFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'serverError':
      return _ServerError.fromJson(json);
    case 'networkError':
      return _NetworkError.fromJson(json);
    case 'unknownError':
      return _UnknownError.fromJson(json);
    case 'emailTaken':
      return _EmailTaken.fromJson(json);
    case 'invalidEmailAndPasswordCombination':
      return _InvalidEmailAndPasswordCombination.fromJson(json);

    default:
      throw FallThroughError();
  }
}

/// @nodoc
class _$AuthFailureTearOff {
  const _$AuthFailureTearOff();

  _ServerError serverError() {
    return const _ServerError();
  }

  _NetworkError networkError() {
    return const _NetworkError();
  }

  _UnknownError unknownError() {
    return const _UnknownError();
  }

  _EmailTaken emailTaken() {
    return const _EmailTaken();
  }

  _InvalidEmailAndPasswordCombination invalidEmailAndPasswordCombination() {
    return const _InvalidEmailAndPasswordCombination();
  }

  AuthFailure fromJson(Map<String, Object> json) {
    return AuthFailure.fromJson(json);
  }
}

/// @nodoc
const $AuthFailure = _$AuthFailureTearOff();

/// @nodoc
mixin _$AuthFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() networkError,
    required TResult Function() unknownError,
    required TResult Function() emailTaken,
    required TResult Function() invalidEmailAndPasswordCombination,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? networkError,
    TResult Function()? unknownError,
    TResult Function()? emailTaken,
    TResult Function()? invalidEmailAndPasswordCombination,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_UnknownError value) unknownError,
    required TResult Function(_EmailTaken value) emailTaken,
    required TResult Function(_InvalidEmailAndPasswordCombination value)
        invalidEmailAndPasswordCombination,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_UnknownError value)? unknownError,
    TResult Function(_EmailTaken value)? emailTaken,
    TResult Function(_InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
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
abstract class _$ServerErrorCopyWith<$Res> {
  factory _$ServerErrorCopyWith(
          _ServerError value, $Res Function(_ServerError) then) =
      __$ServerErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$ServerErrorCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements _$ServerErrorCopyWith<$Res> {
  __$ServerErrorCopyWithImpl(
      _ServerError _value, $Res Function(_ServerError) _then)
      : super(_value, (v) => _then(v as _ServerError));

  @override
  _ServerError get _value => super._value as _ServerError;
}

/// @nodoc
@JsonSerializable()
class _$_ServerError implements _ServerError {
  const _$_ServerError();

  factory _$_ServerError.fromJson(Map<String, dynamic> json) =>
      _$_$_ServerErrorFromJson(json);

  @override
  String toString() {
    return 'AuthFailure.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() networkError,
    required TResult Function() unknownError,
    required TResult Function() emailTaken,
    required TResult Function() invalidEmailAndPasswordCombination,
  }) {
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? networkError,
    TResult Function()? unknownError,
    TResult Function()? emailTaken,
    TResult Function()? invalidEmailAndPasswordCombination,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_UnknownError value) unknownError,
    required TResult Function(_EmailTaken value) emailTaken,
    required TResult Function(_InvalidEmailAndPasswordCombination value)
        invalidEmailAndPasswordCombination,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_UnknownError value)? unknownError,
    TResult Function(_EmailTaken value)? emailTaken,
    TResult Function(_InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ServerErrorToJson(this)..['runtimeType'] = 'serverError';
  }
}

abstract class _ServerError implements AuthFailure {
  const factory _ServerError() = _$_ServerError;

  factory _ServerError.fromJson(Map<String, dynamic> json) =
      _$_ServerError.fromJson;
}

/// @nodoc
abstract class _$NetworkErrorCopyWith<$Res> {
  factory _$NetworkErrorCopyWith(
          _NetworkError value, $Res Function(_NetworkError) then) =
      __$NetworkErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$NetworkErrorCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements _$NetworkErrorCopyWith<$Res> {
  __$NetworkErrorCopyWithImpl(
      _NetworkError _value, $Res Function(_NetworkError) _then)
      : super(_value, (v) => _then(v as _NetworkError));

  @override
  _NetworkError get _value => super._value as _NetworkError;
}

/// @nodoc
@JsonSerializable()
class _$_NetworkError implements _NetworkError {
  const _$_NetworkError();

  factory _$_NetworkError.fromJson(Map<String, dynamic> json) =>
      _$_$_NetworkErrorFromJson(json);

  @override
  String toString() {
    return 'AuthFailure.networkError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _NetworkError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() networkError,
    required TResult Function() unknownError,
    required TResult Function() emailTaken,
    required TResult Function() invalidEmailAndPasswordCombination,
  }) {
    return networkError();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? networkError,
    TResult Function()? unknownError,
    TResult Function()? emailTaken,
    TResult Function()? invalidEmailAndPasswordCombination,
    required TResult orElse(),
  }) {
    if (networkError != null) {
      return networkError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_UnknownError value) unknownError,
    required TResult Function(_EmailTaken value) emailTaken,
    required TResult Function(_InvalidEmailAndPasswordCombination value)
        invalidEmailAndPasswordCombination,
  }) {
    return networkError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_UnknownError value)? unknownError,
    TResult Function(_EmailTaken value)? emailTaken,
    TResult Function(_InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
    required TResult orElse(),
  }) {
    if (networkError != null) {
      return networkError(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_NetworkErrorToJson(this)..['runtimeType'] = 'networkError';
  }
}

abstract class _NetworkError implements AuthFailure {
  const factory _NetworkError() = _$_NetworkError;

  factory _NetworkError.fromJson(Map<String, dynamic> json) =
      _$_NetworkError.fromJson;
}

/// @nodoc
abstract class _$UnknownErrorCopyWith<$Res> {
  factory _$UnknownErrorCopyWith(
          _UnknownError value, $Res Function(_UnknownError) then) =
      __$UnknownErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$UnknownErrorCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements _$UnknownErrorCopyWith<$Res> {
  __$UnknownErrorCopyWithImpl(
      _UnknownError _value, $Res Function(_UnknownError) _then)
      : super(_value, (v) => _then(v as _UnknownError));

  @override
  _UnknownError get _value => super._value as _UnknownError;
}

/// @nodoc
@JsonSerializable()
class _$_UnknownError implements _UnknownError {
  const _$_UnknownError();

  factory _$_UnknownError.fromJson(Map<String, dynamic> json) =>
      _$_$_UnknownErrorFromJson(json);

  @override
  String toString() {
    return 'AuthFailure.unknownError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _UnknownError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() networkError,
    required TResult Function() unknownError,
    required TResult Function() emailTaken,
    required TResult Function() invalidEmailAndPasswordCombination,
  }) {
    return unknownError();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? networkError,
    TResult Function()? unknownError,
    TResult Function()? emailTaken,
    TResult Function()? invalidEmailAndPasswordCombination,
    required TResult orElse(),
  }) {
    if (unknownError != null) {
      return unknownError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_UnknownError value) unknownError,
    required TResult Function(_EmailTaken value) emailTaken,
    required TResult Function(_InvalidEmailAndPasswordCombination value)
        invalidEmailAndPasswordCombination,
  }) {
    return unknownError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_UnknownError value)? unknownError,
    TResult Function(_EmailTaken value)? emailTaken,
    TResult Function(_InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
    required TResult orElse(),
  }) {
    if (unknownError != null) {
      return unknownError(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UnknownErrorToJson(this)..['runtimeType'] = 'unknownError';
  }
}

abstract class _UnknownError implements AuthFailure {
  const factory _UnknownError() = _$_UnknownError;

  factory _UnknownError.fromJson(Map<String, dynamic> json) =
      _$_UnknownError.fromJson;
}

/// @nodoc
abstract class _$EmailTakenCopyWith<$Res> {
  factory _$EmailTakenCopyWith(
          _EmailTaken value, $Res Function(_EmailTaken) then) =
      __$EmailTakenCopyWithImpl<$Res>;
}

/// @nodoc
class __$EmailTakenCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements _$EmailTakenCopyWith<$Res> {
  __$EmailTakenCopyWithImpl(
      _EmailTaken _value, $Res Function(_EmailTaken) _then)
      : super(_value, (v) => _then(v as _EmailTaken));

  @override
  _EmailTaken get _value => super._value as _EmailTaken;
}

/// @nodoc
@JsonSerializable()
class _$_EmailTaken implements _EmailTaken {
  const _$_EmailTaken();

  factory _$_EmailTaken.fromJson(Map<String, dynamic> json) =>
      _$_$_EmailTakenFromJson(json);

  @override
  String toString() {
    return 'AuthFailure.emailTaken()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _EmailTaken);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() networkError,
    required TResult Function() unknownError,
    required TResult Function() emailTaken,
    required TResult Function() invalidEmailAndPasswordCombination,
  }) {
    return emailTaken();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? networkError,
    TResult Function()? unknownError,
    TResult Function()? emailTaken,
    TResult Function()? invalidEmailAndPasswordCombination,
    required TResult orElse(),
  }) {
    if (emailTaken != null) {
      return emailTaken();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_UnknownError value) unknownError,
    required TResult Function(_EmailTaken value) emailTaken,
    required TResult Function(_InvalidEmailAndPasswordCombination value)
        invalidEmailAndPasswordCombination,
  }) {
    return emailTaken(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_UnknownError value)? unknownError,
    TResult Function(_EmailTaken value)? emailTaken,
    TResult Function(_InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
    required TResult orElse(),
  }) {
    if (emailTaken != null) {
      return emailTaken(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_EmailTakenToJson(this)..['runtimeType'] = 'emailTaken';
  }
}

abstract class _EmailTaken implements AuthFailure {
  const factory _EmailTaken() = _$_EmailTaken;

  factory _EmailTaken.fromJson(Map<String, dynamic> json) =
      _$_EmailTaken.fromJson;
}

/// @nodoc
abstract class _$InvalidEmailAndPasswordCombinationCopyWith<$Res> {
  factory _$InvalidEmailAndPasswordCombinationCopyWith(
          _InvalidEmailAndPasswordCombination value,
          $Res Function(_InvalidEmailAndPasswordCombination) then) =
      __$InvalidEmailAndPasswordCombinationCopyWithImpl<$Res>;
}

/// @nodoc
class __$InvalidEmailAndPasswordCombinationCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements _$InvalidEmailAndPasswordCombinationCopyWith<$Res> {
  __$InvalidEmailAndPasswordCombinationCopyWithImpl(
      _InvalidEmailAndPasswordCombination _value,
      $Res Function(_InvalidEmailAndPasswordCombination) _then)
      : super(_value, (v) => _then(v as _InvalidEmailAndPasswordCombination));

  @override
  _InvalidEmailAndPasswordCombination get _value =>
      super._value as _InvalidEmailAndPasswordCombination;
}

/// @nodoc
@JsonSerializable()
class _$_InvalidEmailAndPasswordCombination
    implements _InvalidEmailAndPasswordCombination {
  const _$_InvalidEmailAndPasswordCombination();

  factory _$_InvalidEmailAndPasswordCombination.fromJson(
          Map<String, dynamic> json) =>
      _$_$_InvalidEmailAndPasswordCombinationFromJson(json);

  @override
  String toString() {
    return 'AuthFailure.invalidEmailAndPasswordCombination()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InvalidEmailAndPasswordCombination);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() networkError,
    required TResult Function() unknownError,
    required TResult Function() emailTaken,
    required TResult Function() invalidEmailAndPasswordCombination,
  }) {
    return invalidEmailAndPasswordCombination();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? networkError,
    TResult Function()? unknownError,
    TResult Function()? emailTaken,
    TResult Function()? invalidEmailAndPasswordCombination,
    required TResult orElse(),
  }) {
    if (invalidEmailAndPasswordCombination != null) {
      return invalidEmailAndPasswordCombination();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_UnknownError value) unknownError,
    required TResult Function(_EmailTaken value) emailTaken,
    required TResult Function(_InvalidEmailAndPasswordCombination value)
        invalidEmailAndPasswordCombination,
  }) {
    return invalidEmailAndPasswordCombination(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_UnknownError value)? unknownError,
    TResult Function(_EmailTaken value)? emailTaken,
    TResult Function(_InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
    required TResult orElse(),
  }) {
    if (invalidEmailAndPasswordCombination != null) {
      return invalidEmailAndPasswordCombination(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_InvalidEmailAndPasswordCombinationToJson(this)
      ..['runtimeType'] = 'invalidEmailAndPasswordCombination';
  }
}

abstract class _InvalidEmailAndPasswordCombination implements AuthFailure {
  const factory _InvalidEmailAndPasswordCombination() =
      _$_InvalidEmailAndPasswordCombination;

  factory _InvalidEmailAndPasswordCombination.fromJson(
          Map<String, dynamic> json) =
      _$_InvalidEmailAndPasswordCombination.fromJson;
}
