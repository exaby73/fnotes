// coverage:ignore-file

part of 'register_form_cubit.dart';

@freezed
class RegisterFormState with _$RegisterFormState {
  const factory RegisterFormState({
    required SingleLineString name,
    required EmailAddress emailAddress,
    required Password password,
    required Password confirmPassword,
    required FormState formState,
  }) = _RegisterFormState;

  factory RegisterFormState.fromJson(Map<String, dynamic> json) => _$RegisterFormStateFromJson(json);

  factory RegisterFormState.initial() {
    return RegisterFormState(
      name: SingleLineString.empty(),
      emailAddress: EmailAddress.empty(),
      password: Password.empty(),
      confirmPassword: Password.empty(),
      formState: const FormState.initial(),
    );
  }

  const RegisterFormState._();

  bool get formValid => true;
}
