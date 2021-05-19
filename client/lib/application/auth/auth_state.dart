part of 'auth_cubit.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    required EmailAddress emailAddress,
    required Password password,
    required FormState formState,
  }) = _AuthState;

  factory AuthState.fromJson(Map<String, dynamic> json) => _$AuthStateFromJson(json);

  factory AuthState.initial() {
    return AuthState(
      emailAddress: EmailAddress.empty(),
      password: Password.empty(),
      formState: const FormState.initial(),
    );
  }

  const AuthState._();

  bool get valid => emailAddress.valid && password.valid;
}