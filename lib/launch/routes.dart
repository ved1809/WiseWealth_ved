import 'package:flutter/material.dart';
import 'splash_screen.dart';
import 'login_page.dart';
import 'signup_page.dart';
import '../home/home_screen.dart';
import '../assets/assets_screen.dart';
import '../assets/add_asset.dart';
import '../transactions/transactions_screen.dart';
import '../transactions/add_transaction.dart';
import '../goals/goals_screen.dart';

final Map<String, WidgetBuilder> appRoutes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  LoginPage.routeName: (context) => const LoginPage(),
  SignupPage.routeName: (context) => const SignupPage(),
  HomeScreen.routeName: (context) => const HomeScreen(),
  AssetsScreen.routeName: (context) => const AssetsScreen(),
  AddAssetScreen.routeName: (context) => const AddAssetScreen(),
  TransactionsScreen.routeName: (context) => const TransactionsScreen(),
  AddTransactionScreen.routeName: (context) => const AddTransactionScreen(),
  GoalsScreen.routeName: (context) => const GoalsScreen(),
};
