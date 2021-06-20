import 'package:flutter/material.dart';

/// Import helper
const e = false;

extension BuildContextX on BuildContext {
  ThemeData get theme => Theme.of(this);

  Color get primaryColor => theme.primaryColor;
}
