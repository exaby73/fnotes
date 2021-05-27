import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fnotes/log.dart';
import 'package:fnotes/presentation/auth/pages/login/sign_in_page.dart';

FluroRouter router = FluroRouter();

void defineRoutes() {
  router.define('/', handler: Handler(
    handlerFunc: (context, parameters) {
      if (context == null) {
        logd('NULL');
        return;
      }
      SchedulerBinding.instance?.addPostFrameCallback((_) {
        router.navigateTo(context, '/login');
      });
    },
  ), transitionType: TransitionType.inFromRight);

  router.define('/login', handler: Handler(
    handlerFunc: (context, parameters) {
      return const SignInPage();
    },
  ), transitionType: TransitionType.inFromRight);

  router.notFoundHandler = Handler(
    handlerFunc: (context, parameters) {
      return const NotFoundPage();
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
                router.navigateTo(context, '/login', clearStack: true);
              },
              child: const Text('BACK'),
            ),
          ],
        ),
      ),
    );
  }
}
