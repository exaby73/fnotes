import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';

final _log = Logger();

void logd(dynamic message, {dynamic error, StackTrace? stackTrace}) {
  if (kDebugMode) _log.d(message);
}

void loge(dynamic message, {dynamic error, StackTrace? stackTrace}) {
  if (kDebugMode) _log.e(message, error, stackTrace);
}
