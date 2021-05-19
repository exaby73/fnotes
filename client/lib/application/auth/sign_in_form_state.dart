// coverage:ignore-file

part of 'sign_in_form_cubit.dart';

@freezed
class SignInFormState with _$SignInFormState {
  const factory SignInFormState({
    required EmailAddress emailAddress,
    required Password password,
    required FormState formState,
  }) = _SignInFormState;

  factory SignInFormState.fromJson(Map<String, dynamic> json) => _$SignInFormStateFromJson(json);

  factory SignInFormState.initial() {
    return SignInFormState(
      emailAddress: EmailAddress.empty(),
      password: Password.empty(),
      formState: const FormState.initial(),
    );
  }

  const SignInFormState._();

  bool get formValid => emailAddress.valid && password.valid;
}
