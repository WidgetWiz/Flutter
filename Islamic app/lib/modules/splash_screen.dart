import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamic_app/layout/home_layout.dart';

class splashScreen extends StatelessWidget {
  static const String routeName = "splash-screen";

  @override
  Widget build(BuildContext context) {
    Timer(
        const Duration(seconds: 3)
        , () { 
          Navigator.pushReplacementNamed(context, HomeLayout.routeName);
    });
    var mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      body:
      Image.asset(
        "assets/images/splash_light.png",
        width: mediaQuery.width,
        height: mediaQuery.height,
        fit: BoxFit.cover,
      ),
    );
  }
}
