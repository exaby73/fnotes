// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RegisterRequestDTO _$RegisterRequestDTOFromJson(Map<String, dynamic> json) {
  return _RegisterRequestDTO.fromJson(json);
}

/// @nodoc
class _$RegisterRequestDTOTearOff {
  const _$RegisterRequestDTOTearOff();

  _RegisterRequestDTO call(
      {required SingleLineString name,
      required EmailAddress emailAddress,
      required Password password,
      required Password confirmPassword}) {
    return _RegisterRequestDTO(
      name: name,
      emailAddress: emailAddress,
      password: password,
      confirmPassword: confirmPassword,
    );
  }

  RegisterRequestDTO fromJson(Map<String, Object> json) {
    return RegisterRequestDTO.fromJson(json);
  }
}

/// @nodoc
const $RegisterRequestDTO = _$RegisterRequestDTOTearOff();

/// @nodoc
mixin _$RegisterRequestDTO {
  SingleLineString get name => throw _privateConstructorUsedError;
  EmailAddress get emailAddress => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  Password get confirmPassword => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterRequestDTOCopyWith<RegisterRequestDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterRequestDTOCopyWith<$Res> {
  factory $RegisterRequestDTOCopyWith(
          RegisterRequestDTO value, $Res Function(RegisterRequestDTO) then) =
      _$RegisterRequestDTOCopyWithImpl<$Res>;
  $Res call(
      {SingleLineString name,
      EmailAddress emailAddress,
      Password password,
      Password confirmPassword});

  $SingleLineStringCopyWith<$Res> get name;
  $EmailAddressCopyWith<$Res> get emailAddress;
  $PasswordCopyWith<$Res> get password;
  $PasswordCopyWith<$Res> get confirmPassword;
}

/// @nodoc
class _$RegisterRequestDTOCopyWithImpl<$Res>
    implements $RegisterRequestDTOCopyWith<$Res> {
  _$RegisterRequestDTOCopyWithImpl(this._value, this._then);

  final RegisterRequestDTO _value;
  // ignore: unused_field
  final $Res Function(RegisterRequestDTO) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? emailAddress = freezed,
    Object? password = freezed,
    Object? confirmPassword = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as SingleLineString,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      confirmPassword: confirmPassword == freezed
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as Password,
    ));
  }

  @override
  $SingleLineStringCopyWith<$Res> get name {
    return $SingleLineStringCopyWith<$Res>(_value.name, (value) {
      return _then(_value.copyWith(name: value));
    });
  }

  @override
  $EmailAddressCopyWith<$Res> get emailAddress {
    return $EmailAddressCopyWith<$Res>(_value.emailAddress, (value) {
      return _then(_value.copyWith(emailAddress: value));
    });
  }

  @override
  $PasswordCopyWith<$Res> get password {
    return $PasswordCopyWith<$Res>(_value.password, (value) {
      return _then(_value.copyWith(password: value));
    });
  }

  @override
  $PasswordCopyWith<$Res> get confirmPassword {
    return $PasswordCopyWith<$Res>(_value.confirmPassword, (value) {
      return _then(_value.copyWith(confirmPassword: value));
    });
  }
}

/// @nodoc
abstract class _$RegisterRequestDTOCopyWith<$Res>
    implements $RegisterRequestDTOCopyWith<$Res> {
  factory _$RegisterRequestDTOCopyWith(
          _RegisterRequestDTO value, $Res Function(_RegisterRequestDTO) then) =
      __$RegisterRequestDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {SingleLineString name,
      EmailAddress emailAddress,
      Password password,
      Password confirmPassword});

  @override
  $SingleLineStringCopyWith<$Res> get name;
  @override
  $EmailAddressCopyWith<$Res> get emailAddress;
  @override
  $PasswordCopyWith<$Res> get password;
  @override
  $PasswordCopyWith<$Res> get confirmPassword;
}

/// @nodoc
class __$RegisterRequestDTOCopyWithImpl<$Res>
    extends _$RegisterRequestDTOCopyWithImpl<$Res>
    implements _$RegisterRequestDTOCopyWith<$Res> {
  __$RegisterRequestDTOCopyWithImpl(
      _RegisterRequestDTO _value, $Res Function(_RegisterRequestDTO) _then)
      : super(_value, (v) => _then(v as _RegisterRequestDTO));

  @override
  _RegisterRequestDTO get _value => super._value as _RegisterRequestDTO;

  @override
  $Res call({
    Object? name = freezed,
    Object? emailAddress = freezed,
    Object? password = freezed,
    Object? confirmPassword = freezed,
  }) {
    return _then(_RegisterRequestDTO(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as SingleLineString,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      confirmPassword: confirmPassword == freezed
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as Password,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RegisterRequestDTO implements _RegisterRequestDTO {
  const _$_RegisterRequestDTO(
      {required this.name,
      required this.emailAddress,
      required this.password,
      required this.confirmPassword});

  factory _$_RegisterRequestDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_RegisterRequestDTOFromJson(json);

  @override
  final SingleLineString name;
  @override
  final EmailAddress emailAddress;
  @override
  final Password password;
  @override
  final Password confirmPassword;

  @override
  String toString() {
    return 'RegisterRequestDTO(name: $name, emailAddress: $emailAddress, password: $password, confirmPassword: $confirmPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RegisterRequestDTO &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.emailAddress, emailAddress) ||
                const DeepCollectionEquality()
                    .equals(other.emailAddress, emailAddress)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.confirmPassword, confirmPassword) ||
                const DeepCollectionEquality()
                    .equals(other.confirmPassword, confirmPassword)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(emailAddress) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(confirmPassword);

  @JsonKey(ignore: true)
  @override
  _$RegisterRequestDTOCopyWith<_RegisterRequestDTO> get copyWith =>
      __$RegisterRequestDTOCopyWithImpl<_RegisterRequestDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RegisterRequestDTOToJson(this);
  }
}

abstract class _RegisterRequestDTO implements RegisterRequestDTO {
  const factory _RegisterRequestDTO(
      {required SingleLineString name,
      required EmailAddress emailAddress,
      required Password password,
      required Password confirmPassword}) = _$_RegisterRequestDTO;

  factory _RegisterRequestDTO.fromJson(Map<String, dynamic> json) =
      _$_RegisterRequestDTO.fromJson;

  @override
  SingleLineString get name => throw _privateConstructorUsedError;
  @override
  EmailAddress get emailAddress => throw _privateConstructorUsedError;
  @override
  Password get password => throw _privateConstructorUsedError;
  @override
  Password get confirmPassword => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RegisterRequestDTOCopyWith<_RegisterRequestDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

SignInRequestDTO _$SignInRequestDTOFromJson(Map<String, dynamic> json) {
  return _SignInRequestDTO.fromJson(json);
}

/// @nodoc
class _$SignInRequestDTOTearOff {
  const _$SignInRequestDTOTearOff();

  _SignInRequestDTO call(
      {required EmailAddress emailAddress, required Password password}) {
    return _SignInRequestDTO(
      emailAddress: emailAddress,
      password: password,
    );
  }

  SignInRequestDTO fromJson(Map<String, Object> json) {
    return SignInRequestDTO.fromJson(json);
  }
}

/// @nodoc
const $SignInRequestDTO = _$SignInRequestDTOTearOff();

/// @nodoc
mixin _$SignInRequestDTO {
  EmailAddress get emailAddress => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignInRequestDTOCopyWith<SignInRequestDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInRequestDTOCopyWith<$Res> {
  factory $SignInRequestDTOCopyWith(
          SignInRequestDTO value, $Res Function(SignInRequestDTO) then) =
      _$SignInRequestDTOCopyWithImpl<$Res>;
  $Res call({EmailAddress emailAddress, Password password});

  $EmailAddressCopyWith<$Res> get emailAddress;
  $PasswordCopyWith<$Res> get password;
}

/// @nodoc
class _$SignInRequestDTOCopyWithImpl<$Res>
    implements $SignInRequestDTOCopyWith<$Res> {
  _$SignInRequestDTOCopyWithImpl(this._value, this._then);

  final SignInRequestDTO _value;
  // ignore: unused_field
  final $Res Function(SignInRequestDTO) _then;

  @override
  $Res call({
    Object? emailAddress = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
    ));
  }

  @override
  $EmailAddressCopyWith<$Res> get emailAddress {
    return $EmailAddressCopyWith<$Res>(_value.emailAddress, (value) {
      return _then(_value.copyWith(emailAddress: value));
    });
  }

  @override
  $PasswordCopyWith<$Res> get password {
    return $PasswordCopyWith<$Res>(_value.password, (value) {
      return _then(_value.copyWith(password: value));
    });
  }
}

/// @nodoc
abstract class _$SignInRequestDTOCopyWith<$Res>
    implements $SignInRequestDTOCopyWith<$Res> {
  factory _$SignInRequestDTOCopyWith(
          _SignInRequestDTO value, $Res Function(_SignInRequestDTO) then) =
      __$SignInRequestDTOCopyWithImpl<$Res>;
  @override
  $Res call({EmailAddress emailAddress, Password password});

  @override
  $EmailAddressCopyWith<$Res> get emailAddress;
  @override
  $PasswordCopyWith<$Res> get password;
}

/// @nodoc
class __$SignInRequestDTOCopyWithImpl<$Res>
    extends _$SignInRequestDTOCopyWithImpl<$Res>
    implements _$SignInRequestDTOCopyWith<$Res> {
  __$SignInRequestDTOCopyWithImpl(
      _SignInRequestDTO _value, $Res Function(_SignInRequestDTO) _then)
      : super(_value, (v) => _then(v as _SignInRequestDTO));

  @override
  _SignInRequestDTO get _value => super._value as _SignInRequestDTO;

  @override
  $Res call({
    Object? emailAddress = freezed,
    Object? password = freezed,
  }) {
    return _then(_SignInRequestDTO(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SignInRequestDTO implements _SignInRequestDTO {
  const _$_SignInRequestDTO(
      {required this.emailAddress, required this.password});

  factory _$_SignInRequestDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_SignInRequestDTOFromJson(json);

  @override
  final EmailAddress emailAddress;
  @override
  final Password password;

  @override
  String toString() {
    return 'SignInRequestDTO(emailAddress: $emailAddress, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignInRequestDTO &&
            (identical(other.emailAddress, emailAddress) ||
                const DeepCollectionEquality()
                    .equals(other.emailAddress, emailAddress)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(emailAddress) ^
      const DeepCollectionEquality().hash(password);

  @JsonKey(ignore: true)
  @override
  _$SignInRequestDTOCopyWith<_SignInRequestDTO> get copyWith =>
      __$SignInRequestDTOCopyWithImpl<_SignInRequestDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SignInRequestDTOToJson(this);
  }
}

abstract class _SignInRequestDTO implements SignInRequestDTO {
  const factory _SignInRequestDTO(
      {required EmailAddress emailAddress,
      required Password password}) = _$_SignInRequestDTO;

  factory _SignInRequestDTO.fromJson(Map<String, dynamic> json) =
      _$_SignInRequestDTO.fromJson;

  @override
  EmailAddress get emailAddress => throw _privateConstructorUsedError;
  @override
  Password get password => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SignInRequestDTOCopyWith<_SignInRequestDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
