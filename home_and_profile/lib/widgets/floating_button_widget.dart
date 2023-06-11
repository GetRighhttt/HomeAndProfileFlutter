import 'package:flutter/material.dart';
import 'package:home_and_profile/core/notifiers.dart';

class FloatingButtonWidget extends StatelessWidget {
  const FloatingButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.blue.shade300,
      elevation: 10,
      onPressed: () {
        isDarkNotifier.value = !isDarkNotifier.value;
      }, // use listener to change icon
      child: ValueListenableBuilder(
        valueListenable: isDarkNotifier,
        builder: (context, isDark, child) {
          if (!isDark) {
            // if light mode is showing, show dark mode when selected
            return const Icon(Icons.dark_mode);
          } else {
            // if isDark is showing, show light mode when selected
            return const Icon(Icons.light_mode);
          }
        },
      ),
    );
  }
}
