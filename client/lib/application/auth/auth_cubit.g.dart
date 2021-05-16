// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuthState _$_$_AuthStateFromJson(Map<String, dynamic> json) {
  return _$_AuthState(
    emailAddress:
        EmailAddress.fromJson(json['emailAddress'] as Map<String, dynamic>),
    password: Password.fromJson(json['password'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_AuthStateToJson(_$_AuthState instance) =>
    <String, dynamic>{
      'emailAddress': instance.emailAddress,
      'password': instance.password,
    };
