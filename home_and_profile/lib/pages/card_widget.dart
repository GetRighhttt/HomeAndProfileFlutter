import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget(this.paddingVal, this.color, this.imageVariable, this.title,
      this.description,
      {super.key});

  final double paddingVal;
  final Color color;
  final String imageVariable;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(
          paddingVal,
        ),
        color: color,
        child: Column(
          children: [
            Image.asset(
              imageVariable,
            ),
            Text(
              title,
            ),
            Text(
              description,
            ),
          ],
        ),
      ),
    );
  }
}
