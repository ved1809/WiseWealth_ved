import 'package:flutter/material.dart';
import 'home_screen.dart';
import '../assets_tab/assets_screen.dart';
import '../transactions/transactions_screen.dart';
import '../goals/goals_screen.dart';
import '../animations/transitions.dart'; // Import transitions

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

        Widget nextScreen;
        switch (index) {
          case 0:
            nextScreen = const HomeScreen();
            break;
          case 1:
            nextScreen = const AssetsScreen();
            break;
          case 2:
            nextScreen = const TransactionsScreen();
            break;
          case 3:
            nextScreen = const GoalsScreen();
            break;
          default:
            return;
        }

        // Determine the transition direction
        bool slideFromRight = index > currentIndex;

        Navigator.pushReplacement(
          context,
          slideTabTransition(nextScreen, fromRight: slideFromRight),
        );
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
