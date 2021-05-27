import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fnotes/application/auth/sign_in_form_cubit.dart';

class SignInPageForm extends StatelessWidget {
  const SignInPageForm();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInFormCubit, SignInFormState>(
      builder: (context, state) {
        return Column(
          children: [
            TextFormField(
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
            ),
          ],
        );
      },
    );
  }
}
