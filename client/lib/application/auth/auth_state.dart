part of 'auth_cubit.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    required EmailAddress emailAddress,
    required Password password,
  }) = _AuthState;

  factory AuthState.fromJson(Map<String, dynamic> json) => _$AuthStateFromJson(json);

  factory AuthState.initial() {
    return AuthState(
      emailAddress: EmailAddress.empty(),
      password: Password.empty(),
    );
  }
}