import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fnotes/presentation/core/routes.dart';
import 'package:google_fonts/google_fonts.dart';

class Main extends HookWidget {
  const Main();

  @override
  Widget build(BuildContext context) {
    final darkThemeData = useMemoized(() => ThemeData.dark());
    final primaryColor = useMemoized(() => Colors.orange);
    final accentColor = useMemoized(() => Colors.orangeAccent);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FNotes',
      initialRoute: '/login',
      theme: darkThemeData.copyWith(
        primaryColor: primaryColor,
        primaryColorDark: primaryColor,
        accentColor: accentColor,
        textTheme: GoogleFonts.quicksandTextTheme(darkThemeData.textTheme),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(primaryColor),
            foregroundColor: MaterialStateProperty.all(
              ThemeData.estimateBrightnessForColor(primaryColor) == Brightness.dark ? Colors.white : Colors.black,
            ),
            textStyle: MaterialStateProperty.all(const TextStyle(fontWeight: FontWeight.w500)),
          ),
        ),
      ),
      onGenerateRoute: router.generator,
    );
  }
}
