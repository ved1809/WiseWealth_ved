import 'package:flutter/material.dart';
import 'launch/splash_screen.dart';
import 'launch/routes.dart'; // Our separate routing file
import 'theme/theme.dart'; // Import the custom theme file

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Finance Manager",
      // Set the initial route to the Splash Screen
      initialRoute: SplashScreen.routeName,
      // All our routes are defined in routes.dart
      routes: appRoutes,
      // Use the custom theme from AppTheme
      theme: AppTheme.themeData,
    );
  }
}
