// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'value_objects.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EmailAddress _$EmailAddressFromJson(Map<String, dynamic> json) {
  return _EmailAddress.fromJson(json);
}

/// @nodoc
class _$EmailAddressTearOff {
  const _$EmailAddressTearOff();

  _EmailAddress _internal(
      @EitherValueFailureOrStringConverter()
          Either<ValueFailure, String> value) {
    return _EmailAddress(
      value,
    );
  }

  EmailAddress fromJson(Map<String, Object> json) {
    return EmailAddress.fromJson(json);
  }
}

/// @nodoc
const $EmailAddress = _$EmailAddressTearOff();

/// @nodoc
mixin _$EmailAddress {
  @EitherValueFailureOrStringConverter()
  Either<ValueFailure, String> get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmailAddressCopyWith<EmailAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailAddressCopyWith<$Res> {
  factory $EmailAddressCopyWith(
          EmailAddress value, $Res Function(EmailAddress) then) =
      _$EmailAddressCopyWithImpl<$Res>;
  $Res call(
      {@EitherValueFailureOrStringConverter()
          Either<ValueFailure, String> value});
}

/// @nodoc
class _$EmailAddressCopyWithImpl<$Res> implements $EmailAddressCopyWith<$Res> {
  _$EmailAddressCopyWithImpl(this._value, this._then);

  final EmailAddress _value;
  // ignore: unused_field
  final $Res Function(EmailAddress) _then;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as Either<ValueFailure, String>,
    ));
  }
}

/// @nodoc
abstract class _$EmailAddressCopyWith<$Res>
    implements $EmailAddressCopyWith<$Res> {
  factory _$EmailAddressCopyWith(
          _EmailAddress value, $Res Function(_EmailAddress) then) =
      __$EmailAddressCopyWithImpl<$Res>;
  @override
  $Res call(
      {@EitherValueFailureOrStringConverter()
          Either<ValueFailure, String> value});
}

/// @nodoc
class __$EmailAddressCopyWithImpl<$Res> extends _$EmailAddressCopyWithImpl<$Res>
    implements _$EmailAddressCopyWith<$Res> {
  __$EmailAddressCopyWithImpl(
      _EmailAddress _value, $Res Function(_EmailAddress) _then)
      : super(_value, (v) => _then(v as _EmailAddress));

  @override
  _EmailAddress get _value => super._value as _EmailAddress;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_EmailAddress(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as Either<ValueFailure, String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EmailAddress extends _EmailAddress {
  const _$_EmailAddress(@EitherValueFailureOrStringConverter() this.value)
      : super._();

  factory _$_EmailAddress.fromJson(Map<String, dynamic> json) =>
      _$_$_EmailAddressFromJson(json);

  @override
  @EitherValueFailureOrStringConverter()
  final Either<ValueFailure, String> value;

  @override
  String toString() {
    return 'EmailAddress._internal(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EmailAddress &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  _$EmailAddressCopyWith<_EmailAddress> get copyWith =>
      __$EmailAddressCopyWithImpl<_EmailAddress>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_EmailAddressToJson(this);
  }
}

abstract class _EmailAddress extends EmailAddress {
  const factory _EmailAddress(
      @EitherValueFailureOrStringConverter()
          Either<ValueFailure, String> value) = _$_EmailAddress;
  const _EmailAddress._() : super._();

  factory _EmailAddress.fromJson(Map<String, dynamic> json) =
      _$_EmailAddress.fromJson;

  @override
  @EitherValueFailureOrStringConverter()
  Either<ValueFailure, String> get value => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$EmailAddressCopyWith<_EmailAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

Password _$PasswordFromJson(Map<String, dynamic> json) {
  return _Password.fromJson(json);
}

/// @nodoc
class _$PasswordTearOff {
  const _$PasswordTearOff();

  _Password _internal(
      @EitherValueFailureOrStringConverter()
          Either<ValueFailure, String> value) {
    return _Password(
      value,
    );
  }

  Password fromJson(Map<String, Object> json) {
    return Password.fromJson(json);
  }
}

/// @nodoc
const $Password = _$PasswordTearOff();

/// @nodoc
mixin _$Password {
  @EitherValueFailureOrStringConverter()
  Either<ValueFailure, String> get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PasswordCopyWith<Password> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordCopyWith<$Res> {
  factory $PasswordCopyWith(Password value, $Res Function(Password) then) =
      _$PasswordCopyWithImpl<$Res>;
  $Res call(
      {@EitherValueFailureOrStringConverter()
          Either<ValueFailure, String> value});
}

/// @nodoc
class _$PasswordCopyWithImpl<$Res> implements $PasswordCopyWith<$Res> {
  _$PasswordCopyWithImpl(this._value, this._then);

  final Password _value;
  // ignore: unused_field
  final $Res Function(Password) _then;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as Either<ValueFailure, String>,
    ));
  }
}

/// @nodoc
abstract class _$PasswordCopyWith<$Res> implements $PasswordCopyWith<$Res> {
  factory _$PasswordCopyWith(_Password value, $Res Function(_Password) then) =
      __$PasswordCopyWithImpl<$Res>;
  @override
  $Res call(
      {@EitherValueFailureOrStringConverter()
          Either<ValueFailure, String> value});
}

/// @nodoc
class __$PasswordCopyWithImpl<$Res> extends _$PasswordCopyWithImpl<$Res>
    implements _$PasswordCopyWith<$Res> {
  __$PasswordCopyWithImpl(_Password _value, $Res Function(_Password) _then)
      : super(_value, (v) => _then(v as _Password));

  @override
  _Password get _value => super._value as _Password;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_Password(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as Either<ValueFailure, String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Password extends _Password {
  const _$_Password(@EitherValueFailureOrStringConverter() this.value)
      : super._();

  factory _$_Password.fromJson(Map<String, dynamic> json) =>
      _$_$_PasswordFromJson(json);

  @override
  @EitherValueFailureOrStringConverter()
  final Either<ValueFailure, String> value;

  @override
  String toString() {
    return 'Password._internal(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Password &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  _$PasswordCopyWith<_Password> get copyWith =>
      __$PasswordCopyWithImpl<_Password>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PasswordToJson(this);
  }
}

abstract class _Password extends Password {
  const factory _Password(
      @EitherValueFailureOrStringConverter()
          Either<ValueFailure, String> value) = _$_Password;
  const _Password._() : super._();

  factory _Password.fromJson(Map<String, dynamic> json) = _$_Password.fromJson;

  @override
  @EitherValueFailureOrStringConverter()
  Either<ValueFailure, String> get value => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PasswordCopyWith<_Password> get copyWith =>
      throw _privateConstructorUsedError;
}

SingleLineString _$SingleLineStringFromJson(Map<String, dynamic> json) {
  return _SingleLineString.fromJson(json);
}

/// @nodoc
class _$SingleLineStringTearOff {
  const _$SingleLineStringTearOff();

  _SingleLineString _internal(
      @EitherValueFailureOrStringConverter()
          Either<ValueFailure, String> value) {
    return _SingleLineString(
      value,
    );
  }

  SingleLineString fromJson(Map<String, Object> json) {
    return SingleLineString.fromJson(json);
  }
}

/// @nodoc
const $SingleLineString = _$SingleLineStringTearOff();

/// @nodoc
mixin _$SingleLineString {
  @EitherValueFailureOrStringConverter()
  Either<ValueFailure, String> get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SingleLineStringCopyWith<SingleLineString> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingleLineStringCopyWith<$Res> {
  factory $SingleLineStringCopyWith(
          SingleLineString value, $Res Function(SingleLineString) then) =
      _$SingleLineStringCopyWithImpl<$Res>;
  $Res call(
      {@EitherValueFailureOrStringConverter()
          Either<ValueFailure, String> value});
}

/// @nodoc
class _$SingleLineStringCopyWithImpl<$Res>
    implements $SingleLineStringCopyWith<$Res> {
  _$SingleLineStringCopyWithImpl(this._value, this._then);

  final SingleLineString _value;
  // ignore: unused_field
  final $Res Function(SingleLineString) _then;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as Either<ValueFailure, String>,
    ));
  }
}

/// @nodoc
abstract class _$SingleLineStringCopyWith<$Res>
    implements $SingleLineStringCopyWith<$Res> {
  factory _$SingleLineStringCopyWith(
          _SingleLineString value, $Res Function(_SingleLineString) then) =
      __$SingleLineStringCopyWithImpl<$Res>;
  @override
  $Res call(
      {@EitherValueFailureOrStringConverter()
          Either<ValueFailure, String> value});
}

/// @nodoc
class __$SingleLineStringCopyWithImpl<$Res>
    extends _$SingleLineStringCopyWithImpl<$Res>
    implements _$SingleLineStringCopyWith<$Res> {
  __$SingleLineStringCopyWithImpl(
      _SingleLineString _value, $Res Function(_SingleLineString) _then)
      : super(_value, (v) => _then(v as _SingleLineString));

  @override
  _SingleLineString get _value => super._value as _SingleLineString;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_SingleLineString(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as Either<ValueFailure, String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SingleLineString extends _SingleLineString {
  const _$_SingleLineString(@EitherValueFailureOrStringConverter() this.value)
      : super._();

  factory _$_SingleLineString.fromJson(Map<String, dynamic> json) =>
      _$_$_SingleLineStringFromJson(json);

  @override
  @EitherValueFailureOrStringConverter()
  final Either<ValueFailure, String> value;

  @override
  String toString() {
    return 'SingleLineString._internal(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SingleLineString &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  _$SingleLineStringCopyWith<_SingleLineString> get copyWith =>
      __$SingleLineStringCopyWithImpl<_SingleLineString>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SingleLineStringToJson(this);
  }
}

abstract class _SingleLineString extends SingleLineString {
  const factory _SingleLineString(
      @EitherValueFailureOrStringConverter()
          Either<ValueFailure, String> value) = _$_SingleLineString;
  const _SingleLineString._() : super._();

  factory _SingleLineString.fromJson(Map<String, dynamic> json) =
      _$_SingleLineString.fromJson;

  @override
  @EitherValueFailureOrStringConverter()
  Either<ValueFailure, String> get value => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SingleLineStringCopyWith<_SingleLineString> get copyWith =>
      throw _privateConstructorUsedError;
}
