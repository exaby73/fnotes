import 'package:flutter/foundation.dart';
import 'package:fnotes/injection.dart';
import 'package:injectable/injectable.dart';

Future<void> main() async {
  final String environment = kDebugMode ? Environment.dev : Environment.prod;
  configureDependencies(environment);
}