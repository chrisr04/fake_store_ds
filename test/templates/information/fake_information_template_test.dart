import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fake_store_ds/fake_store_ds.dart';

void main() {
  group('FakeInformationTemplate widget', () {
    testWidgets('renders correctly with description',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: FakeInformationTemplate(
              imagePath: 'assets/images/atom.png',
              message: 'Error Message',
              description: 'This is a detailed description.',
            ),
          ),
        ),
      );

      expect(find.text('Error Message'), findsOneWidget);
      expect(find.text('This is a detailed description.'), findsOneWidget);
    });

    testWidgets('renders correctly without description',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: FakeInformationTemplate(
              imagePath: 'assets/images/atom.png',
              message: 'Error Message',
            ),
          ),
        ),
      );

      expect(find.text('Error Message'), findsOneWidget);
      expect(find.text('This is a detailed description.'), findsNothing);
    });
  });
}
