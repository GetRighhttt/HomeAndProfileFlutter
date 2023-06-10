import 'package:flutter/material.dart';
import 'package:home_and_profile/widgets/card_widget.dart';

class RowItem extends StatelessWidget {
  const RowItem(this.imageOneName, this.imageTwoName, this.color,
      this.paddingValue, this.imageOneText, this.imageTwoText, this.description,
      {super.key});

  final String imageOneName;
  final String imageTwoName;
  final Color color;
  final double paddingValue;
  final String imageOneText;
  final String imageTwoText;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CardWidget(
            paddingValue,
            color,
            imageOneName,
            imageOneText,
            description,
          ),
        ),
        Expanded(
          child: CardWidget(
            paddingValue,
            color,
            imageTwoName,
            imageTwoText,
            description,
          ),
        ),
      ],
    );
  }
}
