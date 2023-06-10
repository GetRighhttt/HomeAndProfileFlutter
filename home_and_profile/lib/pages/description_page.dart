import 'package:flutter/material.dart';
import 'package:home_and_profile/core/constants.dart';

class DescriptionPage extends StatelessWidget {
  const DescriptionPage(this.paddingVal, this.color, this.imageVariable,
      this.title, this.description,
      {super.key});

  final double paddingVal;
  final Color color;
  final String imageVariable;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        automaticallyImplyLeading: true,
        primary: true,
        elevation: 4,
        shadowColor: Colors.grey.shade100,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.save,
            ),
            onPressed: () {
              // provide action method
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(
          10,
        ),
        child: Column(
          children: [
            Image.asset(
              imageVariable,
            ),
            Wrap(
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Text Button',
                  ),
                ),
                ElevatedButton(
                  style: const ButtonStyle(
                    elevation: MaterialStatePropertyAll(
                      10,
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Elevated Button',
                  ),
                ),
                FilledButton(
                  onPressed: () {},
                  child: const Text(
                    'Filled Button',
                  ),
                ),
                FloatingActionButton(
                  onPressed: () {},
                  elevation: 4,
                  child: const Text(
                    'Floating Button',
                  ),
                ),
              ],
            ),
            FittedBox(
              fit: BoxFit.contain,
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            const Text(
              randomString,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w300,
                fontStyle: FontStyle.italic,
              ),
              textAlign: TextAlign.justify,
            ),
            const Text(
              randomString,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w300,
                fontStyle: FontStyle.italic,
              ),
              textAlign: TextAlign.justify,
            ),
            const Text(
              randomString,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w300,
                fontStyle: FontStyle.italic,
              ),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}
