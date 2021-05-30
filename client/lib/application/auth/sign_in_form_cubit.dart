import 'package:bloc/bloc.dart';
import 'package:fnotes/application/core/form_state.dart';
import 'package:fnotes/domain/auth/auth_entity.dart';
import 'package:fnotes/domain/auth/dtos.dart';
import 'package:fnotes/domain/auth/value_objects.dart';
import 'package:fnotes/injection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'sign_in_form_cubit.freezed.dart';

part 'sign_in_form_cubit.g.dart';

part 'sign_in_form_state.dart';

@LazySingleton()
class SignInFormCubit extends Cubit<SignInFormState> {
  static SignInFormCubit get to => getIt();

  final AuthEntity _authEntity;

  SignInFormCubit()
      : _authEntity = getIt(),
        super(SignInFormState.initial());

  void changeEmail(String email) {
    emit(state.copyWith.call(
      emailAddress: EmailAddress(email),
    ));
  }

  void changePassword(String password) {
    emit(state.copyWith.call(
      password: Password(password),
    ));
  }

  Future<void> signIn() async {
    if (!state.formValid) {
      return emit(state.copyWith.call(
        formState: const FormState.invalid(),
      ));
    }

    emit(state.copyWith.call(
      formState: const FormState.loading(),
    ));

    final signInRequestDTO = SignInRequestDTO(
      emailAddress: state.emailAddress,
      password: state.password,
    );
    final result = await _authEntity.signIn(signInRequestDTO);

    result.fold(
      (failure) => emit(state.copyWith.call(
        formState: FormState.error(failure),
      )),
      (_) => emit(state.copyWith.call(
        formState: const FormState.success(),
      )),
    );
  }

  void reset() => emit(SignInFormState.initial());

  @disposeMethod
  Future<void> dispose() async {
    await close();
  }
}
