import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fnotes/presentation/core/extensions.dart';
import 'package:fnotes/presentation/core/routes.dart';
import 'package:fnotes_ui/fnotes_ui.dart';

class SignInPageTitle extends HookWidget {
  const SignInPageTitle();

  @override
  Widget build(BuildContext context) {
    final createAccountTapRecognizer = useMemoized(() {
      return TapGestureRecognizer()
        ..onTap = () {
          router.navigateTo(context, '/sign_up');
        };
    });
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FNotesText('Login', style: context.textTheme.headline5),
        const SizedBox(height: 5),
        Text.rich(
          TextSpan(
            text: "Don't have an account? ",
            style: context.textTheme.caption,
            children: [
              WidgetSpan(
                child: MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: Text.rich(
                    TextSpan(
                      text: 'Create one now!',
                      style: const TextStyle(color: Colors.blue),
                      recognizer: createAccountTapRecognizer,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
