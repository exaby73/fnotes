import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fnotes/application/auth/sign_in_form_cubit.dart';
import 'package:fnotes/injection.dart';
import 'package:fnotes/persentation/auth/widgets/title.dart';

class LoginPage extends StatelessWidget {
  const LoginPage();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SignInFormCubit>.value(
      value: getIt(),
      child: const _LoginPage(),
    );
  }
}

class _LoginPage extends HookWidget {
  const _LoginPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          shrinkWrap: true,
          children: const [
            LoginPageTitle(),
          ],
        ),
      ),
    );
  }
}
