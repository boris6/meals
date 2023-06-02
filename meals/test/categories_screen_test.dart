import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:meals/categories.dart';

void main() {
  group('CategoriesScreen', () {
    testWidgets('should display a list of categories',
        (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(home: CategoriesScreen()));

      expect(find.text('Italian'), findsOneWidget);
      expect(find.text('Quick & Easy'), findsOneWidget);
      expect(find.text('Hamburgers'), findsOneWidget);
      expect(find.text('German'), findsOneWidget);
      expect(find.text('Light & Lovely'), findsOneWidget);
      expect(find.text('Exotic'), findsOneWidget);
      expect(find.text('Breakfast'), findsOneWidget);
    });

    testWidgets(
        'should navigate to the category meals screen when a category is tapped',
        (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(home: CategoriesScreen()));

      await tester.tap(find.text('Italian'));
      await tester.pumpAndSettle();

      expect(find.text('Spaghetti Carbonara'), findsOneWidget);
      expect(find.text('Pizza Margherita'), findsOneWidget);
      expect(find.text('Lasagna'), findsOneWidget);
    });
  });
}
