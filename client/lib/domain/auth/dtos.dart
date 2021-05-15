import 'package:fnotes/domain/auth/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dtos.freezed.dart';

part 'dtos.g.dart';

@freezed
class RegisterRequestDTO with _$RegisterRequestDTO {
  const factory RegisterRequestDTO({
    required SingleLineString name,
    required EmailAddress emailAddress,
    required Password password,
    required Password confirmPassword,
  }) = _RegisterRequestDTO;

  factory RegisterRequestDTO.fromJson(Map<String, dynamic> json) => _$RegisterRequestDTOFromJson(json);
}

@freezed
class SignInRequestDTO with _$SignInRequestDTO {
  const factory SignInRequestDTO({
    required EmailAddress emailAddress,
    required Password password,
  }) = _SignInRequestDTO;

  factory SignInRequestDTO.fromJson(Map<String, dynamic> json) => _$SignInRequestDTOFromJson(json);
}