import 'package:flutter/material.dart';
import 'package:home_and_profile/core/notifiers.dart';
import 'package:home_and_profile/widgets/row_widget.dart';

// constants
final Color greyShadeColor = Colors.grey.shade100;
const double rowPadding = 8.0;

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Home',
        ),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.menu,
              ),
              onPressed: () {},
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.add_a_photo,
            ),
            onPressed: () {
              showDialog<String>(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  title: const Text('Add Photo?'),
                  content: const Text('Would you like to add a photo?'),
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
          )
        ],
        primary: true,
        centerTitle: true,
        elevation: 4,
        shadowColor: greyShadeColor,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(
          10,
        ),
        child: Column(
          children: [
            RowItem(
              'assets/app.png',
              'assets/socials.png',
              greyShadeColor,
              rowPadding,
              'Apps',
              'Socials',
              'Description',
            ),
            RowItem(
              'assets/space.png',
              'assets/rocket.png',
              greyShadeColor,
              rowPadding,
              'Space',
              'Rocket',
              'Description',
            ),
            RowItem(
              'assets/cactus.png',
              'assets/travel.png',
              greyShadeColor,
              rowPadding,
              'Cactus',
              'Travels',
              'Description',
            ),
            RowItem(
              'assets/door.png',
              'assets/web.png',
              greyShadeColor,
              rowPadding,
              'Door',
              'Web',
              'Description',
            ),
            RowItem(
              'assets/yeah.png',
              'assets/yeah.png',
              greyShadeColor,
              rowPadding,
              'Yeah',
              'Yeah',
              'Description',
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueAccent.shade100,
        elevation: 10,
        onPressed: () {
          isDarkNotifier.value = !isDarkNotifier.value;
        },
        child: const Icon(
          Icons.dark_mode,
        ),
      ),
    );
  }
}
