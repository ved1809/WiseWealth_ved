import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'assets/assets_screen.dart';
import '../transactions/transactions_screen.dart';
import '../goals/goals_screen.dart'; // Import GoalsScreen

class BottomNavBar extends StatelessWidget {
  final int currentIndex;

  const BottomNavBar({super.key, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.grey,
      onTap: (index) {
        if (index == currentIndex) return;
        switch (index) {
          case 0:
            Navigator.pushReplacementNamed(context, HomeScreen.routeName);
            break;
          case 1:
            Navigator.pushReplacementNamed(context, AssetsScreen.routeName);
            break;
          case 2:
            Navigator.pushReplacementNamed(context, TransactionsScreen.routeName);
            break;
          case 3:
            Navigator.pushReplacementNamed(context, GoalsScreen.routeName);
            break;
        }
      },
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_balance),
          label: "Assets",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.list),
          label: "Transactions",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.flag),
          label: "Goals",
        ),
      ],
    );
  }
}
