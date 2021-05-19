import 'package:bloc/bloc.dart';
import 'package:fnotes/application/core/form_state.dart';
import 'package:fnotes/domain/auth/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_cubit.freezed.dart';

part 'auth_cubit.g.dart';

part 'auth_state.dart';

@LazySingleton()
class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthState.initial());

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
    if (!state.valid) {
      return emit(state.copyWith.call(
        formState: const FormState.invalid(),
      ));
    }
  }
}
