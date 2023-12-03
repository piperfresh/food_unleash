import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodUnleashTheme {
  //? light text mode
  static TextTheme lightTextTheme = TextTheme(
      bodyLarge: GoogleFonts.openSans(
        fontSize: 14.0,
        fontWeight: FontWeight.w700,
        color: Colors.black,
      ),
      displayLarge: GoogleFonts.openSans(
        fontSize: 32.0,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      displayMedium: GoogleFonts.openSans(
        fontWeight: FontWeight.w700,
        fontSize: 21,
        color: Colors.black,
      ),
      displaySmall: GoogleFonts.openSans(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      titleLarge: GoogleFonts.openSans(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: Colors.black,
      ));

  //? dark text mode
  static TextTheme darkTextTheme = TextTheme(
      bodyLarge: GoogleFonts.openSans(
        fontSize: 14.0,
        fontWeight: FontWeight.w700,
        color: Colors.white,
      ),
      displayLarge: GoogleFonts.openSans(
        fontSize: 32.0,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      displayMedium: GoogleFonts.openSans(
        fontWeight: FontWeight.w700,
        fontSize: 21,
        color: Colors.white,
      ),
      displaySmall: GoogleFonts.openSans(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      titleLarge: GoogleFonts.openSans(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ));

  //? light Mode
  static ThemeData lightTheme() {
    return ThemeData(
      brightness: Brightness.light,
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateColor.resolveWith((states) => Colors.black),
      ),
      appBarTheme: const AppBarTheme(
          foregroundColor: Colors.black, backgroundColor: Colors.white),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Colors.black, foregroundColor: Colors.white),
      bottomNavigationBarTheme:
          const BottomNavigationBarThemeData(selectedItemColor: Colors.green),
      textTheme: lightTextTheme,
    );
  }

  //! dark Mode
  static ThemeData darkTheme() {
    return ThemeData(
      brightness: Brightness.dark,
        bottomNavigationBarTheme:
            const BottomNavigationBarThemeData(selectedItemColor: Colors.green),
        textTheme: darkTextTheme,
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
            backgroundColor: Colors.green, foregroundColor: Colors.white));
  }
}
