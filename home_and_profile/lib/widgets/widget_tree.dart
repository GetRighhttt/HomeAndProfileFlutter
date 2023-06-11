import 'package:flutter/material.dart';
import 'package:home_and_profile/pages/home_page.dart';
import 'package:home_and_profile/pages/profile_page.dart';

// showing this widget to implement the bottom navigation bar
class Widget3 extends StatefulWidget {
  const Widget3({super.key});

  @override
  State<Widget3> createState() => _Widget3State();
}

// necessary for bottom nav bar and to update the state of the bar/which page
// is being displayed
class _Widget3State extends State<Widget3> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const ProfilePage(), // show home page in body
      bottomNavigationBar: NavigationBar(
        destinations: const [
          // setting list for navigation bar
          NavigationDestination(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(
              Icons.person,
            ),
            label: 'Profile',
          ),
          NavigationDestination(
            icon: Icon(
              Icons.settings,
            ),
            label: 'Settings',
          ),
          NavigationDestination(
            icon: Icon(
              Icons.save_alt,
            ),
            label: 'Saved',
          ),
        ],
        selectedIndex: currentPage, // sets selected index
        onDestinationSelected: (int value) {
          setState(() {
            // sets current index to value selected
            currentPage = value;
          });
        },
        elevation: 4,
        shadowColor: Colors.grey.shade100,
      ),
    );
  }
}
