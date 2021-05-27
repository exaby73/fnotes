import 'package:flutter/material.dart';
import 'package:fnotes_ui/shared/_platforms.dart';

class FNotesText extends StatelessWidget {
  final String data;
  final TextStyle? style;

  const FNotesText(this.data, {this.style});

  @override
  Widget build(BuildContext context) {
    if (isDesktopOrWeb) {
      return SelectableText(
        data,
        style: style,
      );
    }

    return Text(
      data,
      style: style,
    );
  }
}
