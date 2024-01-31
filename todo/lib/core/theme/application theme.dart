import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ApplicationTheme{
  static Color primaryColor = const Color(0xFF5D9CEC);
  static ThemeData lightTheme = ThemeData(
    primaryColor: primaryColor,
    scaffoldBackgroundColor: const Color(0xFFDFECDB),
    colorScheme: ColorScheme.fromSeed(
        seedColor: primaryColor,
        onPrimary: primaryColor,
        onSecondary: const Color(0xFF61E757),
        background: Colors.white


    ),
    appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: primaryColor,
        toolbarHeight: 150,
        titleTextStyle: GoogleFonts.poppins(
          color: Colors.white,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        )
    ),
    bottomNavigationBarTheme:BottomNavigationBarThemeData(
     // backgroundColor: Colors.white,
      type: BottomNavigationBarType.fixed,
      selectedIconTheme: IconThemeData(
        size: 32,
        color: Colors.white,
      ),
      selectedItemColor: Colors.black,
      unselectedIconTheme: IconThemeData(
        size: 28,
        color: Colors.grey.shade700,
      ),
      unselectedItemColor: Colors.grey.shade700,
    ),
    textTheme: TextTheme(
      titleLarge: GoogleFonts.poppins(
        color: Colors.white,
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
      bodyLarge: GoogleFonts.poppins(
        color: primaryColor,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
      bodyMedium: GoogleFonts.poppins(
          color: Colors.black,
          fontSize: 15,
          fontWeight: FontWeight.w500
      ),
      bodySmall: GoogleFonts.inter(
          color: Colors.black,
          fontSize: 12,
          fontWeight: FontWeight.w500

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
      ),
          cardTheme: CardTheme(
          elevation: 0.0,
          color: primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),

          )
  );
}