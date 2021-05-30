import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fnotes/application/auth/sign_in_form_cubit.dart';
import 'package:fnotes/injection.dart';
import 'package:fnotes/presentation/auth/pages/login/sign_in_page.dart';
import 'package:fnotes/presentation/notes/pages/notes_list.dart';

FluroRouter router = FluroRouter();

class RoutePaths {
  const RoutePaths._();

  static const notesList = '/';
  static const signIn = '/sign-in';
  static const signUp = '/sign-up';
}

void defineRoutes() {
  router.define(RoutePaths.signIn, handler: Handler(
    handlerFunc: (context, parameters) {
      return const SignInPage();
    },
  ), transitionType: TransitionType.inFromRight);

  router.define(RoutePaths.notesList, handler: Handler(
    handlerFunc: (context, parameters) {
      return authenticatedNavigateTo(context!, const NotesList());
    },
  ), transitionType: TransitionType.inFromRight);

  router.notFoundHandler = Handler(
    handlerFunc: (context, parameters) {
      return const NotFoundPage();
    },
  );
}

Widget authenticatedNavigateTo(BuildContext context, Widget page) {
  return getIt<SignInFormCubit>().state.formState.maybeWhen(
        success: () => page,
        orElse: () {
          SchedulerBinding.instance?.addPostFrameCallback((_) {
            router.navigateTo(context, RoutePaths.signIn);
          });

          return const Scaffold();
        },
      );
}

class NotFoundPage extends HookWidget {
  const NotFoundPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Not Found'),
            const SizedBox(height: 20),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () {
                router.navigateTo(context, RoutePaths.signIn, clearStack: true);
              },
              child: const Text('BACK'),
            ),
          ],
        ),
      ),
    );
  }
}
