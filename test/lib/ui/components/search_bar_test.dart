/*
 * Created by Kyle Fuehri
 */

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_weather/ui/components/search_bar.dart';

void main() {
  testWidgets('Is the Search Bar displaying correctly', (tester) async {
    // Find all the widgets needed
    final searchBar = find.byKey(const ValueKey('Search Field'));

    // Execute the test
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: MainSearchBar(
          onPress: (value) {},
        ),
      ),
    ));
    await tester.enterText(searchBar, 'London');
    await tester.press(searchBar);

    // Check the outputs
    expect(find.text('London'), findsOneWidget);
  });
}
