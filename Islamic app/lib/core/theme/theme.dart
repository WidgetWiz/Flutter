import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ApplicationTheme{
  static ThemeData lightTheme = ThemeData(
    primaryColor: const Color(0xFFB7935F),
      appBarTheme: AppBarTheme(
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          titleTextStyle: GoogleFonts.elMessiri(
            color: Colors.black,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          )
      ),
      bottomNavigationBarTheme:const BottomNavigationBarThemeData(
        backgroundColor: Color(0xFFB7935F),
        type: BottomNavigationBarType.fixed,
        selectedIconTheme: IconThemeData(
          size: 32,
          color: Colors.black,
        ),
        selectedItemColor: Colors.black,
        unselectedIconTheme: IconThemeData(
          size: 28,
          color: Colors.white,
        ),
        unselectedItemColor: Colors.white,
      ),
      textTheme: TextTheme(
        titleLarge: GoogleFonts.elMessiri(
          color: Colors.black,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
        bodyLarge: GoogleFonts.elMessiri(
          color: Colors.black,
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
        bodyMedium: GoogleFonts.elMessiri(
          color: Colors.black,
          fontSize: 25,
          fontWeight: FontWeight.w500
        ),
        bodySmall: GoogleFonts.elMessiri(
          color: Colors.black,
          fontSize: 18,

        ),
      ),
  );
  static ThemeData darkTheme = ThemeData(
      appBarTheme: AppBarTheme(
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          titleTextStyle: GoogleFonts.elMessiri(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          )
      )
  );
}