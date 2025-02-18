import 'package:flutter/material.dart';
import 'splash_screen.dart';
import 'routes.dart'; // Our separate routing file

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
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
