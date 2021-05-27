import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fnotes/presentation/core/routes.dart';

class Main extends HookWidget {
  const Main();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FNotes',
      initialRoute: '/login',
      onGenerateRoute: router.generator,
    );
  }
}
