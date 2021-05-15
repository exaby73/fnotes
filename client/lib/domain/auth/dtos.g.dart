// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RegisterRequestDTO _$_$_RegisterRequestDTOFromJson(
    Map<String, dynamic> json) {
  return _$_RegisterRequestDTO(
    name: SingleLineString.fromJson(json['name'] as Map<String, dynamic>),
    emailAddress:
        EmailAddress.fromJson(json['emailAddress'] as Map<String, dynamic>),
    password: Password.fromJson(json['password'] as Map<String, dynamic>),
    confirmPassword:
        Password.fromJson(json['confirmPassword'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_RegisterRequestDTOToJson(
        _$_RegisterRequestDTO instance) =>
    <String, dynamic>{
      'name': instance.name,
      'emailAddress': instance.emailAddress,
      'password': instance.password,
      'confirmPassword': instance.confirmPassword,
    };

_$_SignInRequestDTO _$_$_SignInRequestDTOFromJson(Map<String, dynamic> json) {
  return _$_SignInRequestDTO(
    emailAddress:
        EmailAddress.fromJson(json['emailAddress'] as Map<String, dynamic>),
    password: Password.fromJson(json['password'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_SignInRequestDTOToJson(
        _$_SignInRequestDTO instance) =>
    <String, dynamic>{
      'emailAddress': instance.emailAddress,
      'password': instance.password,
    };
