import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fnotes/injection.dart';
import 'package:fnotes/persentation/core/main.dart';
import 'package:injectable/injectable.dart';

Future<void> main() async {
  final String environment = kDebugMode ? Environment.dev : Environment.prod;
  configureDependencies(environment);

  runApp(const Main());
}
