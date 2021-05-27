import 'dart:io';

import 'package:flutter/foundation.dart';

bool get isDesktopOrWeb => kIsWeb || Platform.isWindows || Platform.isMacOS || Platform.isLinux;