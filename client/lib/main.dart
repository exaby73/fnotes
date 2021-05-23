import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fnotes/injection.dart';
import 'package:fnotes/persentation/core/main.dart';
import 'package:injectable/injectable.dart';

Future<void> main() async {
  configureDependencies(Environment.dev);
  runApp(const Main());
}
