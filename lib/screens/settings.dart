import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        backgroundColor: Colors.blueAccent, // Changed to a new color
      ),
      body: Column(
        children: [
          // Account Section - Made clickable
          ListTile(
            leading: const Icon(
              Icons.person,
              size: 30, // Increased icon size
            ),
            title: const Text(
              'Account',
              style: TextStyle(
                fontSize: 22, // Increased text size
                fontFamily: 'Cairo', // Apply Cairo font
              ),
            ),
            subtitle: const Text(
              'Manage your account',
              style: TextStyle(
                fontSize: 18, // Increased subtitle size
                fontFamily: 'Cairo', // Apply Cairo font
              ),
            ),
            onTap: () {
              // Placeholder for Account section logic
              print('Account clicked');
              // Navigate to Account settings or another screen if needed
            },
          ),
          // Notifications Section - Made clickable
          ListTile(
            leading: const Icon(
              Icons.notifications,
              size: 30, // Increased icon size
            ),
            title: const Text(
              'Notifications',
              style: TextStyle(
                fontSize: 22, // Increased text size
                fontFamily: 'Cairo', // Apply Cairo font
              ),
            ),
            subtitle: const Text(
              'Manage notification preferences',
              style: TextStyle(
                fontSize: 18, // Increased subtitle size
                fontFamily: 'Cairo', // Apply Cairo font
              ),
            ),
            onTap: () {
              // Placeholder for Notifications section logic
              print('Notifications clicked');
              // Navigate to Notification settings or another screen if needed
            },
          ),
          // Theme Section - Made clickable
          ListTile(
            leading: const Icon(
              Icons.palette,
              size: 30, // Increased icon size
            ),
            title: const Text(
              'Theme',
              style: TextStyle(
                fontSize: 22, // Increased text size
                fontFamily: 'Cairo', // Apply Cairo font
              ),
            ),
            subtitle: const Text(
              'Dark / Light mode',
              style: TextStyle(
                fontSize: 18, // Increased subtitle size
                fontFamily: 'Cairo', // Apply Cairo font
              ),
            ),
            onTap: () {
              // Placeholder for Theme section logic
              print('Theme clicked');
              // Toggle between Dark and Light theme if needed
            },
          ),
          const Spacer(),
          // Full-width logout button with padding from bottom
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0), // Added vertical padding
            child: GestureDetector(
              onTap: () {
                // Placeholder for logout logic (does nothing)
                print('Logout clicked');
                // You can navigate to a login screen or perform logout actions
              },
              child: Container(
                width: double.infinity, // Make the logout button full width
                padding: const EdgeInsets.symmetric(vertical: 15),
                decoration: BoxDecoration(
                  color: Colors.white, // Set the button color to white
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1), // Subtle shadow for the button
                      blurRadius: 10,
                      offset: const Offset(0, 5),
                    ),
                  ],
                ),
                child: const Center(
                  child: Text(
                    'Logout',
                    style: TextStyle(
                      color: Colors.black, // Text color remains black for visibility
                      fontSize: 18, // Increased font size
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Cairo', // Apply Cairo font
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
