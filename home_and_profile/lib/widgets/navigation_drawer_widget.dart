import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:home_and_profile/widgets/widget_tree.dart';

class NavigationDrawerWidget extends StatelessWidget {
  const NavigationDrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 4,
      shadowColor: Colors.grey,
      child: ListView(
        children: [
          const DrawerHeader(
            padding: EdgeInsets.all(
              8,
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/stefan_picture.png',
                ),
                alignment: Alignment.centerLeft,
                fit: BoxFit.contain,
              ),
            ),
            child: Text(
              'Navigation Panel',
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w900,
                fontSize: 14,
              ),
              textAlign: TextAlign.right,
            ),
          ),
          ListTile(
            selectedTileColor: Colors.blue,
            leading: const Icon(
              Icons.home,
            ),
            title: const Text(
              'Home',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const Widget3();
                  },
                ),
              );
            },
          ),
          ListTile(
            selectedTileColor: Colors.blue,
            leading: const Icon(
              Icons.share,
            ),
            title: const Text(
              'Share',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
            onTap: () {
              showDialog<String>(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  title: const Text('Share Button'),
                  content: const Text(
                    'Would you like to share this application?',
                  ),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'Cancel'),
                      child: const Text('Cancel'),
                    ),
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'OK'),
                      child: const Text('OK'),
                    ),
                  ],
                ),
              );
            },
          ),
          ListTile(
            selectedTileColor: Colors.blue,
            leading: const Icon(
              Icons.favorite,
            ),
            title: const Text(
              'Favorite',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
            onTap: () {
              showDialog<String>(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  title: const Text('Favorites Button'),
                  content: const Text(
                    'Would you like to favorite this application?',
                  ),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'Cancel'),
                      child: const Text('Cancel'),
                    ),
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'OK'),
                      child: const Text('OK'),
                    ),
                  ],
                ),
              );
            },
          ),
          ListTile(
            selectedTileColor: Colors.blue,
            leading: const Icon(
              Icons.logout,
            ),
            title: const Text(
              'Logout',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
            onTap: () {
              SystemChannels.platform.invokeListMethod(
                'SystemNavigator.pop',
              );
            },
          ),
        ],
      ),
    );
  }
}
