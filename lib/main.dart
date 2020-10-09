import 'package:flutter/material.dart';
import 'package:password_genny/provider/add_password_provider.dart';
import 'package:password_genny/provider/data_provider.dart';
import 'package:password_genny/provider/home_screen_provider.dart';
import 'package:password_genny/screens/splash_screen.dart';
import 'package:provider/provider.dart';

void main() => runApp(PasswordGenny());

class PasswordGenny extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => HomeScreenProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => AddPasswordProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => DataProvider(),
        ),
      ],
      builder: (context, child) => MaterialApp(
        home: SplashScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
