import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData LightTheme(BuildContext context) => ThemeData(
    fontFamily:
        GoogleFonts.lato().fontFamily, //text style remain same in overall app
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.purple,
      foregroundColor: Colors.white,
      elevation: 2,
      iconTheme: IconThemeData(color: Colors.white),
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
    textTheme: Theme.of(context).textTheme,
  );

  static ThemeData DarkTheme(BuildContext context) =>
      ThemeData(brightness: Brightness.dark);
}
