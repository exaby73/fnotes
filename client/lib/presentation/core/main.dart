import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fnotes/presentation/core/routes.dart';
import 'package:google_fonts/google_fonts.dart';

class Main extends HookWidget {
  const Main();

  @override
  Widget build(BuildContext context) {
    final darkThemeData = useMemoized(() => ThemeData.dark());

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FNotes',
      initialRoute: '/login',
      theme: darkThemeData.copyWith(
        primaryColor: Colors.orange,
        primaryColorDark: Colors.orange,
        accentColor: Colors.orangeAccent,
        textTheme: GoogleFonts.quicksandTextTheme(darkThemeData.textTheme),
      ),
      onGenerateRoute: router.generator,
    );
  }
}
