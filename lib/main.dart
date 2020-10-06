import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:password_genny/screens/splash_screen.dart';

void main() => runApp(PasswordGenny());



class PasswordGenny extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

