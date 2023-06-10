import 'package:flutter/material.dart';
import 'package:home_and_profile/pages/description_page.dart';

const double boxHeight = 5;

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
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const DescriptionPage();
            },
            allowSnapshotting: true,
          ),
        );
      },
      child: Card(
        child: Container(
          padding: EdgeInsets.all(
            paddingVal,
          ),
          color: color,
          child: Column(
            children: [
              const SizedBox(
                height: boxHeight,
              ),
              Image.asset(
                imageVariable,
              ),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                description,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
              ),
              const SizedBox(
                height: boxHeight,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
