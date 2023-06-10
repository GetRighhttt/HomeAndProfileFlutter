import 'package:flutter/material.dart';

class RowItem extends StatelessWidget {
  const RowItem(
      this.imageOneName, this.imageTwoName, this.color, this.paddingValue,
      {super.key});

  final String imageOneName;
  final String imageTwoName;
  final Color color;
  final double paddingValue;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Card(
            child: Container(
              padding: EdgeInsets.all(
                paddingValue,
              ),
              color: color,
              child: Image.asset(
                imageOneName,
              ),
            ),
          ),
        ),
        Expanded(
          child: Card(
            child: Container(
              padding: EdgeInsets.all(
                paddingValue,
              ),
              color: color,
              child: Image.asset(
                imageTwoName,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
