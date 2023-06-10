import 'package:flutter/material.dart';

class DescriptionPage extends StatelessWidget {
  const DescriptionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Description'),
        automaticallyImplyLeading: true,
        primary: true,
        centerTitle: true,
        elevation: 4,
        shadowColor: Colors.grey.shade100,
      ),
    );
  }
}
