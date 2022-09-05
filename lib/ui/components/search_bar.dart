/*
 * Created by Kyle Fuehri
 */

import 'package:flutter/material.dart';

class MainSearchBar extends StatelessWidget {
  final Function(String value) onPress;
  const MainSearchBar({
    super.key,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      child: TextFormField(
        key: const Key('Search Field'),
        style: Theme.of(context).textTheme.labelLarge,
        decoration: const InputDecoration(
          // Icon on the right
          suffixIcon: Icon(Icons.search),
          // Whether the textformfield should have a background color
          filled: true,
          fillColor: Colors.white,
          hintText: 'Search here',
          // Hides the borders of the inputtextfield
          border: InputBorder.none,
          // Used to center align the text in the search bar
          contentPadding: EdgeInsets.all(20.0),
        ),
        // What to do with the textform values
        onFieldSubmitted: onPress,
      ),
    );
  }
}
