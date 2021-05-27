import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fnotes/injection.dart';
import 'package:fnotes/presentation/core/main.dart';
import 'package:fnotes/presentation/core/routes.dart';
import 'package:injectable/injectable.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  configureDependencies(Environment.dev);
  defineRoutes();
  runApp(const Main());
}
