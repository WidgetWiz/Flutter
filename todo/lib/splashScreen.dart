import 'dart:async';

import 'package:flutter/material.dart';
import 'package:todo/home_%20layout/home_layout.dart';

class splashScreen extends StatelessWidget {
  const splashScreen({super.key});
  static const String routeName = 'splashScreen';

  @override
  Widget build(BuildContext context) {
    Timer(
      const Duration(seconds: 3), () => Navigator.pushReplacementNamed(context, homeLayout.routeName)
    );
    var mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      body: Image.asset("assets/images/splash_light.png",
        width: mediaQuery.width,
        height: mediaQuery.height,
        fit: BoxFit.cover,
      ),
    );
  }
}
