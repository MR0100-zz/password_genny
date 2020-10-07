import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:password_genny/screens/on_boarding_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _redirectToanotherScreen();
  }

  /// after 5 seconds it will redirect to the another screen...
  _redirectToanotherScreen() async {
    await Future.delayed(Duration(seconds: 4), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (_) => OnBoardingScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // color: Color(0xff710a77),
        child: Center(child: Lottie.asset('assets/splash.json')),
      ),
    );
  }
}
