import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fnotes/application/auth/sign_in_form_cubit.dart';
import 'package:fnotes/injection.dart';
import 'package:fnotes/presentation/core/routes.dart';

class NotesList extends HookWidget {
  const NotesList();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Home'),
      ),
    );
  }
}
