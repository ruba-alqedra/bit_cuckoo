import 'package:final_ucas/screens/login_screen.dart';
import 'package:final_ucas/screens/onboarding_screen.dart';
import 'package:final_ucas/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/splash_screen',
      routes: {
        '/splash_screen': (context) => const SplashScreen(),
        '/login_screen': (context) => const LoginScreen(),
        '/on_boarding_screen': (context) => const OnboardingScreen(),
      },
    );
  }
}
