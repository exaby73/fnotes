import 'package:bloc/bloc.dart';
import 'package:fnotes/application/core/form_state.dart';
import 'package:fnotes/domain/auth/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'register_form_cubit.freezed.dart';

part 'register_form_cubit.g.dart';

part 'register_form_state.dart';

@LazySingleton()
class RegisterFormCubit extends Cubit<RegisterFormState> {
  RegisterFormCubit() : super(RegisterFormState.initial());

  void changeName(String input) {
    emit(state.copyWith.call(
      name: SingleLineString(input),
    ));
  }

  void changeEmail(String input) {
    emit(state.copyWith.call(
      emailAddress: EmailAddress(input),
    ));
  }

  void changePassword(String input) {
    emit(state.copyWith.call(
      password: Password(input),
    ));
  }

  void changeConfirmPassword(String input) {
    emit(state.copyWith.call(
      confirmPassword: Password(input),
    ));
  }
}
