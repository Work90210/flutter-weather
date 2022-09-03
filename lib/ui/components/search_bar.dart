/*
 * Created by Kyle Fuehri
 */

import 'package:flutter/material.dart';

class MainSearchBar extends StatelessWidget {
  final Function(String value) onChanged;
  final VoidCallback onPress;
  const MainSearchBar({
    super.key,
    required this.onChanged,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // Dynamically change the width of the sizedBox based on the width of the screen
      width: MediaQuery.of(context).size.width * 0.25,
      child: TextFormField(
        style: Theme.of(context).textTheme.labelLarge,
        decoration: InputDecoration(
          // Icon on the right
          suffixIcon: RawMaterialButton(
            onPressed: (() {}),
            child: const Icon(Icons.search),
          ),
          // Whether the textformfield should have a background color
          filled: true,
          fillColor: Colors.white,
          hintText: 'London',
          // Hides the borders of the inputtextfield
          border: InputBorder.none,
          // Used to center align the text in the search bar
          contentPadding: const EdgeInsets.all(11.0),
        ),
        // What to do with the textform values
        onChanged: onChanged.call,
      ),
    );
  }
}
