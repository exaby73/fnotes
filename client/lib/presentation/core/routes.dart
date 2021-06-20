import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fnotes/application/auth/sign_in_form_cubit.dart';
import 'package:fnotes/presentation/auth/pages/login/sign_in_page.dart';
import 'package:fnotes/presentation/notes/pages/notes_list.dart';
import 'package:get/get.dart';

class RoutePaths {
  const RoutePaths._();

  static const notFound = '/not_found';
  static const notesList = '/';
  static const signIn = '/sign-in';
  static const signUp = '/sign-up';
}

List<GetPage> get pages {
  return [
    GetPage(
      name: RoutePaths.signIn,
      page: () {
        return const SignInPage();
      },
    ),
    GetPage(
      name: RoutePaths.notesList,
      page: () {
        return const NotesList();
      },
    ),
  ];
}

GetPage get notFoundRoute => GetPage(
      name: RoutePaths.notFound,
      page: () => const NotFoundPage(),
    );

void navigateToSignInIfNotAuthenticated() {
  if (!SignInFormCubit.to.isAuthenticated()) {
    SchedulerBinding.instance?.addPostFrameCallback((_) {
      Get.offAllNamed(RoutePaths.signIn);
    });
  }
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
                Get.offAllNamed(RoutePaths.signIn);
              },
              child: const Text('BACK'),
            ),
          ],
        ),
      ),
    );
  }
}
