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
