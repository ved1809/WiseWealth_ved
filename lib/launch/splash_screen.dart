import 'package:flutter/material.dart';
import 'dart:async';
import '../launch/login_page.dart';
import '../animations/animations.dart'; // Import animations
import '../animations/transitions.dart'; // Import transitions

class SplashScreen extends StatefulWidget {
  static const String routeName = '/splash';
  final String connectionMessage;

  const SplashScreen({super.key, required this.connectionMessage});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context, fadeTransition(const LoginPage())); // Use fade transition
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            scaleIn(
              child: Image.asset(
                './assets/WiseWealthLabel.png', // Your app's logo
                height: 100,
              ),
            ),
            const SizedBox(height: 20),
            slideInFromBottom(child: const CircularProgressIndicator()), // Animated loader
            const SizedBox(height: 20),
            fadeIn(
              child: const Text(
                'Your Personalized Manager',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 20),
            fadeIn(
              child: Text(
                widget.connectionMessage, // Show Flask connection status
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
