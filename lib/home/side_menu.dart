import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Remove default padding.
        padding: EdgeInsets.zero,
        children: <Widget>[
          // Drawer header with profile image and welcome text.
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('assets/profile.png'), // Update this path as needed.
                ),
                SizedBox(height: 10),
                Text(
                  "Welcome, User!",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          // Profile menu item.
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text("Profile"),
            onTap: () {
              Navigator.pop(context); // Close the drawer.
              Navigator.pushNamed(context, '/profile');
            },
          ),
          // About menu item.
          ListTile(
            leading: const Icon(Icons.info),
            title: const Text("About"),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/about');
            },
          ),
          // Logout menu item.
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text("Logout"),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushReplacementNamed(context, '/splash');
            },
          ),
        ],
      ),
    );
  }
}
