import 'package:flutter/material.dart';
import '../animations/animations.dart'; // Import animations
import '../animations/transitions.dart'; // Import animations
import '../side_menu/profile.dart'; // Import ProfilePage
import '../side_menu/about.dart';   // Import AboutPage

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          // Drawer header with profile image and welcome text.
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                scaleIn( // Profile image with scale-in effect
                  child: const CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/profile.png'),
                  ),
                ),
                const SizedBox(height: 10),
                fadeIn( // Welcome text fades in smoothly
                  child: const Text(
                    "Welcome, User!",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Profile menu item with slide-in animation
          slideInFromLeft(
            child: ListTile(
              leading: const Icon(Icons.person),
              title: const Text("Profile"),
              onTap: () {
                Navigator.pop(context); // Close the drawer.
                // Navigate to ProfilePage with transition
                Navigator.of(context).push(fadeTransition(ProfilePage()));
              },
            ),
          ),
          // About menu item with slide-in animation
          slideInFromLeft(
            child: ListTile(
              leading: const Icon(Icons.info),
              title: const Text("About"),
              onTap: () {
                Navigator.pop(context); // Close the drawer.
                // Navigate to AboutPage with transition
                Navigator.of(context).push(fadeTransition(AboutPage()));
              },
            ),
          ),
          // Logout menu item with slide-in animation
          slideInFromLeft(
            child: ListTile(
              leading: const Icon(Icons.logout),
              title: const Text("Logout"),
              onTap: () {
                Navigator.pop(context); // Close the drawer.
                Navigator.pushReplacementNamed(context, '/splash');
              },
            ),
          ),
        ],
      ),
    );
  }
}
