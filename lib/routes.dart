import 'package:flutter/material.dart';
import 'splash_screen.dart';
import 'login_page.dart';
import 'signup_page.dart';
import 'home_screen.dart';
import 'assets_screen.dart';
import 'transactions_screen.dart';
import 'goals_screen.dart';

final Map<String, WidgetBuilder> appRoutes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  LoginPage.routeName: (context) => const LoginPage(),
  SignupPage.routeName: (context) => const SignupPage(),
  HomeScreen.routeName: (context) => const HomeScreen(),
  AssetsScreen.routeName: (context) => const AssetsScreen(),
  TransactionsScreen.routeName: (context) => const TransactionsScreen(),
  GoalsScreen.routeName: (context) => const GoalsScreen(),
};
