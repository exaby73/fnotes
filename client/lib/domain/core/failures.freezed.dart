// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ValueFailure _$ValueFailureFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'invalidEmail':
      return _InvalidEmail.fromJson(json);
    case 'shortPassword':
      return _ShortPassword.fromJson(json);
    case 'invalidString':
      return _InvalidString.fromJson(json);

    default:
      throw FallThroughError();
  }
}

/// @nodoc
class _$ValueFailureTearOff {
  const _$ValueFailureTearOff();

  _InvalidEmail invalidEmail(String failedValue) {
    return _InvalidEmail(
      failedValue,
    );
  }

  _ShortPassword shortPassword(String failedValue) {
    return _ShortPassword(
      failedValue,
    );
  }

  _InvalidString invalidString(String failedValue) {
    return _InvalidString(
      failedValue,
    );
  }

  ValueFailure fromJson(Map<String, Object> json) {
    return ValueFailure.fromJson(json);
  }
}

/// @nodoc
const $ValueFailure = _$ValueFailureTearOff();

/// @nodoc
mixin _$ValueFailure {
  String get failedValue => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue) invalidEmail,
    required TResult Function(String failedValue) shortPassword,
    required TResult Function(String failedValue) invalidString,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue)? invalidEmail,
    TResult Function(String failedValue)? shortPassword,
    TResult Function(String failedValue)? invalidString,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvalidEmail value) invalidEmail,
    required TResult Function(_ShortPassword value) shortPassword,
    required TResult Function(_InvalidString value) invalidString,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvalidEmail value)? invalidEmail,
    TResult Function(_ShortPassword value)? shortPassword,
    TResult Function(_InvalidString value)? invalidString,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ValueFailureCopyWith<ValueFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueFailureCopyWith<$Res> {
  factory $ValueFailureCopyWith(
          ValueFailure value, $Res Function(ValueFailure) then) =
      _$ValueFailureCopyWithImpl<$Res>;
  $Res call({String failedValue});
}

/// @nodoc
class _$ValueFailureCopyWithImpl<$Res> implements $ValueFailureCopyWith<$Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  final ValueFailure _value;
  // ignore: unused_field
  final $Res Function(ValueFailure) _then;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_value.copyWith(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$InvalidEmailCopyWith<$Res>
    implements $ValueFailureCopyWith<$Res> {
  factory _$InvalidEmailCopyWith(
          _InvalidEmail value, $Res Function(_InvalidEmail) then) =
      __$InvalidEmailCopyWithImpl<$Res>;
  @override
  $Res call({String failedValue});
}

/// @nodoc
class __$InvalidEmailCopyWithImpl<$Res> extends _$ValueFailureCopyWithImpl<$Res>
    implements _$InvalidEmailCopyWith<$Res> {
  __$InvalidEmailCopyWithImpl(
      _InvalidEmail _value, $Res Function(_InvalidEmail) _then)
      : super(_value, (v) => _then(v as _InvalidEmail));

  @override
  _InvalidEmail get _value => super._value as _InvalidEmail;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_InvalidEmail(
      failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_InvalidEmail implements _InvalidEmail {
  const _$_InvalidEmail(this.failedValue);

  factory _$_InvalidEmail.fromJson(Map<String, dynamic> json) =>
      _$_$_InvalidEmailFromJson(json);

  @override
  final String failedValue;

  @override
  String toString() {
    return 'ValueFailure.invalidEmail(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InvalidEmail &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  _$InvalidEmailCopyWith<_InvalidEmail> get copyWith =>
      __$InvalidEmailCopyWithImpl<_InvalidEmail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue) invalidEmail,
    required TResult Function(String failedValue) shortPassword,
    required TResult Function(String failedValue) invalidString,
  }) {
    return invalidEmail(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue)? invalidEmail,
    TResult Function(String failedValue)? shortPassword,
    TResult Function(String failedValue)? invalidString,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvalidEmail value) invalidEmail,
    required TResult Function(_ShortPassword value) shortPassword,
    required TResult Function(_InvalidString value) invalidString,
  }) {
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvalidEmail value)? invalidEmail,
    TResult Function(_ShortPassword value)? shortPassword,
    TResult Function(_InvalidString value)? invalidString,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_InvalidEmailToJson(this)..['runtimeType'] = 'invalidEmail';
  }
}

abstract class _InvalidEmail implements ValueFailure {
  const factory _InvalidEmail(String failedValue) = _$_InvalidEmail;

  factory _InvalidEmail.fromJson(Map<String, dynamic> json) =
      _$_InvalidEmail.fromJson;

  @override
  String get failedValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$InvalidEmailCopyWith<_InvalidEmail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ShortPasswordCopyWith<$Res>
    implements $ValueFailureCopyWith<$Res> {
  factory _$ShortPasswordCopyWith(
          _ShortPassword value, $Res Function(_ShortPassword) then) =
      __$ShortPasswordCopyWithImpl<$Res>;
  @override
  $Res call({String failedValue});
}

/// @nodoc
class __$ShortPasswordCopyWithImpl<$Res>
    extends _$ValueFailureCopyWithImpl<$Res>
    implements _$ShortPasswordCopyWith<$Res> {
  __$ShortPasswordCopyWithImpl(
      _ShortPassword _value, $Res Function(_ShortPassword) _then)
      : super(_value, (v) => _then(v as _ShortPassword));

  @override
  _ShortPassword get _value => super._value as _ShortPassword;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_ShortPassword(
      failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ShortPassword implements _ShortPassword {
  const _$_ShortPassword(this.failedValue);

  factory _$_ShortPassword.fromJson(Map<String, dynamic> json) =>
      _$_$_ShortPasswordFromJson(json);

  @override
  final String failedValue;

  @override
  String toString() {
    return 'ValueFailure.shortPassword(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ShortPassword &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  _$ShortPasswordCopyWith<_ShortPassword> get copyWith =>
      __$ShortPasswordCopyWithImpl<_ShortPassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue) invalidEmail,
    required TResult Function(String failedValue) shortPassword,
    required TResult Function(String failedValue) invalidString,
  }) {
    return shortPassword(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue)? invalidEmail,
    TResult Function(String failedValue)? shortPassword,
    TResult Function(String failedValue)? invalidString,
    required TResult orElse(),
  }) {
    if (shortPassword != null) {
      return shortPassword(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvalidEmail value) invalidEmail,
    required TResult Function(_ShortPassword value) shortPassword,
    required TResult Function(_InvalidString value) invalidString,
  }) {
    return shortPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvalidEmail value)? invalidEmail,
    TResult Function(_ShortPassword value)? shortPassword,
    TResult Function(_InvalidString value)? invalidString,
    required TResult orElse(),
  }) {
    if (shortPassword != null) {
      return shortPassword(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ShortPasswordToJson(this)..['runtimeType'] = 'shortPassword';
  }
}

abstract class _ShortPassword implements ValueFailure {
  const factory _ShortPassword(String failedValue) = _$_ShortPassword;

  factory _ShortPassword.fromJson(Map<String, dynamic> json) =
      _$_ShortPassword.fromJson;

  @override
  String get failedValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ShortPasswordCopyWith<_ShortPassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$InvalidStringCopyWith<$Res>
    implements $ValueFailureCopyWith<$Res> {
  factory _$InvalidStringCopyWith(
          _InvalidString value, $Res Function(_InvalidString) then) =
      __$InvalidStringCopyWithImpl<$Res>;
  @override
  $Res call({String failedValue});
}

/// @nodoc
class __$InvalidStringCopyWithImpl<$Res>
    extends _$ValueFailureCopyWithImpl<$Res>
    implements _$InvalidStringCopyWith<$Res> {
  __$InvalidStringCopyWithImpl(
      _InvalidString _value, $Res Function(_InvalidString) _then)
      : super(_value, (v) => _then(v as _InvalidString));

  @override
  _InvalidString get _value => super._value as _InvalidString;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_InvalidString(
      failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_InvalidString implements _InvalidString {
  const _$_InvalidString(this.failedValue);

  factory _$_InvalidString.fromJson(Map<String, dynamic> json) =>
      _$_$_InvalidStringFromJson(json);

  @override
  final String failedValue;

  @override
  String toString() {
    return 'ValueFailure.invalidString(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InvalidString &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  _$InvalidStringCopyWith<_InvalidString> get copyWith =>
      __$InvalidStringCopyWithImpl<_InvalidString>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue) invalidEmail,
    required TResult Function(String failedValue) shortPassword,
    required TResult Function(String failedValue) invalidString,
  }) {
    return invalidString(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue)? invalidEmail,
    TResult Function(String failedValue)? shortPassword,
    TResult Function(String failedValue)? invalidString,
    required TResult orElse(),
  }) {
    if (invalidString != null) {
      return invalidString(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvalidEmail value) invalidEmail,
    required TResult Function(_ShortPassword value) shortPassword,
    required TResult Function(_InvalidString value) invalidString,
  }) {
    return invalidString(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvalidEmail value)? invalidEmail,
    TResult Function(_ShortPassword value)? shortPassword,
    TResult Function(_InvalidString value)? invalidString,
    required TResult orElse(),
  }) {
    if (invalidString != null) {
      return invalidString(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_InvalidStringToJson(this)..['runtimeType'] = 'invalidString';
  }
}

abstract class _InvalidString implements ValueFailure {
  const factory _InvalidString(String failedValue) = _$_InvalidString;

  factory _InvalidString.fromJson(Map<String, dynamic> json) =
      _$_InvalidString.fromJson;

  @override
  String get failedValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$InvalidStringCopyWith<_InvalidString> get copyWith =>
      throw _privateConstructorUsedError;
}
