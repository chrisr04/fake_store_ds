import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fake_store_ds/fake_store_ds.dart';

void main() {
  group('FakeTextFieldSearch Widget Tests', () {
    testWidgets('renders correctly', (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: FakeTextFieldSearch(
              hintText: 'Search...',
            ),
          ),
        ),
      );

      expect(find.byType(FakeTextField), findsOneWidget);
      expect(find.text('Search...'), findsOneWidget);
    });

    testWidgets('triggers onChanged callback', (WidgetTester tester) async {
      String changedText = '';
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: FakeTextFieldSearch(
              onChanged: (value) {
                changedText = value;
              },
            ),
          ),
        ),
      );

      await tester.enterText(find.byType(FakeTextField), 'Hello');
      await tester.pump();

      expect(changedText, 'Hello');
    });

    testWidgets('triggers onSubmit callback with TextInputAction',
        (WidgetTester tester) async {
      String submittedText = '';
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: FakeTextFieldSearch(
              onSubmit: (value) {
                submittedText = value;
              },
            ),
          ),
        ),
      );

      await tester.enterText(find.byType(FakeTextField), 'Hello');
      await tester.testTextInput.receiveAction(TextInputAction.search);
      await tester.pump();

      expect(submittedText, 'Hello');
    });

    testWidgets('triggers onSubmit callback with icon button',
        (WidgetTester tester) async {
      String submittedText = '';
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: FakeTextFieldSearch(
              onSubmit: (value) {
                submittedText = value;
              },
            ),
          ),
        ),
      );

      await tester.enterText(find.byType(FakeTextField), 'Hello');
      await tester.tap(find.byIcon(Icons.search));
      await tester.pump();

      expect(submittedText, 'Hello');
    });

    testWidgets('triggers onTap callback when tapped',
        (WidgetTester tester) async {
      bool tapped = false;
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: FakeTextFieldSearch(
              onTap: () {
                tapped = true;
              },
            ),
          ),
        ),
      );

      await tester.tap(find.byType(FakeTextField));
      await tester.pump();

      expect(tapped, true);
    });

    testWidgets('renders read-only state correctly',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: FakeTextFieldSearch(
              readOnly: true,
              hintText: 'Read only',
            ),
          ),
        ),
      );

      final FakeTextField textField = tester.widget(find.byType(FakeTextField));
      expect(textField.readOnly, true);
      expect(find.text('Read only'), findsOneWidget);
    });
  });
}
