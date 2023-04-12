import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:ngo_app/screens/login-screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        splash: const Text(
          "NGO App",
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            fontSize: 35
          ),
        ),
        backgroundColor: Colors.orange,
        nextScreen: const LoginScreen()
    );
  }
}
