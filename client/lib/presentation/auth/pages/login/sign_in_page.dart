import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fnotes/application/auth/sign_in_form_cubit.dart';
import 'package:fnotes/presentation/auth/pages/login/widgets/form.dart';
import 'package:fnotes/presentation/auth/pages/login/widgets/title.dart';
import 'package:fnotes/presentation/core/routes.dart';
import 'package:fnotes/presentation/core/widgets/unfocus.dart';
import 'package:fnotes_ui/fnotes_ui.dart';
import 'package:get/get.dart';

class SignInPage extends StatelessWidget {
  const SignInPage();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SignInFormCubit>.value(
      value: SignInFormCubit.to,
      child: const _SignInPage(),
    );
  }
}

class _SignInPage extends HookWidget {
  const _SignInPage();

  @override
  Widget build(BuildContext context) {
    useEffect(() {
      if (SignInFormCubit.to.isAuthenticated()) {
        SchedulerBinding.instance?.addPostFrameCallback((_) {
          Get.offAllNamed(RoutePaths.notesList);
        });
      } else {
        SignInFormCubit.to.reset();
      }
    }, const []);

    return Unfocus(
      child: Scaffold(
        body: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 400),
            child: ListView(
              shrinkWrap: true,
              children: const [
                SignInPageTitle(),
                kfnLargeVerticalSpacer,
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: SignInPageForm(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
