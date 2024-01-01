import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ApplicationTheme{
  static ThemeData lightTheme = ThemeData(
    primaryColor: Color(0xFFB7935F),
      appBarTheme: AppBarTheme(
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          titleTextStyle: GoogleFonts.elMessiri(
            color: Colors.black,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          )
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
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