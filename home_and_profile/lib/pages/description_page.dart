import 'dart:ui';

import 'package:flutter/material.dart';

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
            Text(
              title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
