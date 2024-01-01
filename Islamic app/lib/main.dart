import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islamic_app/core/theme/theme.dart';
import 'package:islamic_app/layout/home_layout.dart';
import 'package:islamic_app/modules/splash_screen.dart';

void main() {
  runApp(const IslamyApp());
}

class IslamyApp extends StatelessWidget{
  const IslamyApp({super.key});


  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        theme: ApplicationTheme.lightTheme,
        darkTheme: ApplicationTheme.darkTheme,
        themeMode: ThemeMode.system,
        debugShowCheckedModeBanner: false,
        initialRoute: splashScreen.routeName,
        routes: {
          splashScreen.routeName: (context) => splashScreen(),
          HomeLayout.routeName: (context) => HomeLayout(),

        },
      );
  }
}
