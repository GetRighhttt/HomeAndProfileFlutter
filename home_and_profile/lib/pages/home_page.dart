import 'package:flutter/material.dart';
import 'package:home_and_profile/pages/row_widget.dart';

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
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        primary: true,
        centerTitle: true,
        elevation: 4,
        shadowColor: Colors.lightBlue,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(
          10,
        ),
        child: Column(
          children: [
            RowItem(
              'assets/app.png',
              'assets/cactus.png',
              Colors.grey.shade100,
              8.0,
            ),
            RowItem(
              'assets/door.png',
              'assets/rocket.png',
              Colors.grey.shade100,
              8.0,
            ),
            RowItem(
              'assets/socials.png',
              'assets/space.png',
              Colors.grey.shade100,
              8.0,
            ),
            RowItem(
              'assets/travel.png',
              'assets/web.png',
              Colors.grey.shade100,
              8.0,
            ),
            RowItem(
              'assets/yeah.png',
              'assets/app.png',
              Colors.grey.shade100,
              8.0,
            )
          ],
        ),
      ),
    );
  }
}
