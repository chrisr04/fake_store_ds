import 'package:fake_store_ds/fake_store_ds.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('FakeModalWarning', () {
    testWidgets('shows dialog with correct title and button label',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Builder(
              builder: (BuildContext context) {
                return TextButton(
                  onPressed: () async {
                    await FakeModalWarning.show(
                      context,
                      title: 'Test Title',
                      buttonLabel: 'Test Button',
                      onPressedButton: () {},
                    );
                  },
                  child: const Text('Show Dialog'),
                );
              },
            ),
          ),
        ),
      );

      await tester.tap(find.text('Show Dialog'));
      await tester.pumpAndSettle();

      expect(find.text('Test Title'), findsOneWidget);
      expect(find.text('Test Button'), findsOneWidget);
    });

    testWidgets('handles button press correctly', (WidgetTester tester) async {
      bool buttonPressed = false;

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Builder(
              builder: (BuildContext context) {
                return TextButton(
                  onPressed: () async {
                    await FakeModalWarning.show(
                      context,
                      title: 'Test Title',
                      buttonLabel: 'Test Button',
                      onPressedButton: () {
                        buttonPressed = true;
                      },
                    );
                  },
                  child: const Text('Show Dialog'),
                );
              },
            ),
          ),
        ),
      );

      await tester.tap(find.text('Show Dialog'));
      await tester.pumpAndSettle();

      await tester.tap(find.text('Test Button'));
      await tester.pumpAndSettle();

      expect(buttonPressed, isTrue);
    });
  });
}
