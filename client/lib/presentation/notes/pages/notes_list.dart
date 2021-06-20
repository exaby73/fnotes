import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fnotes/presentation/core/routes.dart';

class NotesList extends HookWidget {
  const NotesList();

  @override
  Widget build(BuildContext context) {
    useEffect(() {
      navigateToSignInIfNotAuthenticated();
    }, const []);

    return const Scaffold(
      body: Center(
        child: Text('Home'),
      ),
    );
  }
}
