import 'package:flutter/material.dart';
import 'package:home_and_profile/core/constants.dart';

class DescriptionPage extends StatefulWidget {
  const DescriptionPage(this.paddingVal, this.color, this.imageVariable,
      this.title, this.description,
      {super.key});

  final double paddingVal;
  final Color color;
  final String imageVariable;
  final String title;
  final String description;

  @override
  State<DescriptionPage> createState() => _DescriptionPageState();
}

class _DescriptionPageState extends State<DescriptionPage> {
  double fontSizeCustom = 25;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
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
              widget.imageVariable,
            ),
            Wrap(
              spacing: 15,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Extra Small',
                  ),
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: const Text(
                    'Small',
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
                    'Medium',
                  ),
                ),
                FilledButton(
                  onPressed: () {},
                  child: const Text(
                    'Large',
                  ),
                ),
                FloatingActionButton(
                  onPressed: () {},
                  elevation: 4,
                  child: const Text(
                    'Extra Large',
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            FittedBox(
              fit: BoxFit.contain,
              child: Text(
                widget.title,
                style: TextStyle(
                  fontSize: fontSizeCustom,
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
