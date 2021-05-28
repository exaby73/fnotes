import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fnotes/application/auth/sign_in_form_cubit.dart';
import 'package:fnotes/domain/auth/value_objects.dart';
import 'package:fnotes/presentation/core/routes.dart';
import 'package:fnotes_ui/fnotes_ui.dart';

class SignInPageForm extends HookWidget {
  const SignInPageForm();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormCubit, SignInFormState>(
      listener: (context, state) {
        state.formState.maybeWhen(
          success: () => router.navigateTo(context, RoutePaths.notesList, clearStack: true),
          orElse: () => null,
        );
      },
      builder: (context, state) {
        return Column(
          children: const [
            _EmailField(),
            kfnLargeVerticalSpacer,
            _PasswordField(),
            kfnVeryLargeVerticalSpacer,
            _SignInButton(),
          ],
        );
      },
    );
  }
}

class _EmailField extends StatelessWidget {
  const _EmailField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: const InputDecoration(
        hintText: 'Email',
      ),
      autovalidateMode: context.watch<SignInFormCubit>().state.formState.maybeWhen(
            invalid: () => AutovalidateMode.always,
            orElse: () => AutovalidateMode.disabled,
          ),
      validator: (_) => context.read<SignInFormCubit>().state.emailAddress.value.fold(
            (l) => l.maybeWhen(
              invalidEmail: (_) => 'Invalid Email',
              orElse: () => null,
            ),
            (_) => null,
          ),
      onChanged: context.watch<SignInFormCubit>().changeEmail,
    );
  }
}

class _PasswordField extends HookWidget {
  const _PasswordField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final hidePassword = useState(true);

    return TextFormField(
      decoration: InputDecoration(
        hintText: 'Password',
        suffixIcon: IconButton(
          onPressed: () => hidePassword.value = !hidePassword.value,
          icon: Icon(hidePassword.value ? CupertinoIcons.eye_slash : CupertinoIcons.eye),
        ),
      ),
      obscureText: hidePassword.value,
      autovalidateMode: context.watch<SignInFormCubit>().state.formState.maybeWhen(
            invalid: () => AutovalidateMode.always,
            orElse: () => AutovalidateMode.disabled,
          ),
      validator: (_) => context.read<SignInFormCubit>().state.password.value.fold(
            (l) => l.maybeWhen(
              shortPassword: (_) => 'Password should be at least ${Password.minPasswordLength} characters',
              orElse: () => null,
            ),
            (_) => null,
          ),
      onChanged: context.watch<SignInFormCubit>().changePassword,
    );
  }
}

class _SignInButton extends HookWidget {
  const _SignInButton();

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: context.watch<SignInFormCubit>().signIn,
      child: const Text('SIGN IN'),
    );
  }
}
