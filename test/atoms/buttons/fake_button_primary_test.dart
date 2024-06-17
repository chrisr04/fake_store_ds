import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fake_store_ds/fake_store_ds.dart';

void main() {
  group('FakeButtonPrimary Widget Tests', () {
    testWidgets('displays the label correctly', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: FakeButtonPrimary(
              onPressed: () {},
              label: 'Test Button',
            ),
          ),
        ),
      );

      expect(find.text('Test Button'), findsOneWidget);
    });

    testWidgets('calls onPressed callback when tapped',
        (WidgetTester tester) async {
      bool pressed = false;

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: FakeButtonPrimary(
              onPressed: () {
                pressed = true;
              },
              label: 'Press Me',
            ),
          ),
        ),
      );

      await tester.tap(find.text('Press Me'));
      await tester.pumpAndSettle();

      expect(pressed, isTrue);
    });

    testWidgets('displays with default size if not provided',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: FakeButtonPrimary(
              onPressed: () {},
              label: 'Default Size',
            ),
          ),
        ),
      );

      final fakeButton = tester.widget<FakeButton>(find.byType(FakeButton));
      expect(fakeButton.size, FakeButtonSize.medium);
    });

    testWidgets('applies the correct size when provided',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: FakeButtonPrimary(
              onPressed: () {},
              label: 'Large Size',
              size: FakeButtonSize.large,
            ),
          ),
        ),
      );

      final fakeButton = tester.widget<FakeButton>(find.byType(FakeButton));
      expect(fakeButton.size, FakeButtonSize.large);
    });

    testWidgets('uses theme colors for button and label',
        (WidgetTester tester) async {
      final customTheme = ThemeData(
        primaryColor: Colors.red,
        colorScheme: const ColorScheme.light(
          onPrimary: Colors.white,
        ),
      );

      await tester.pumpWidget(
        MaterialApp(
          theme: customTheme,
          home: Scaffold(
            body: FakeButtonPrimary(
              onPressed: () {},
              label: 'Theme Colors',
            ),
          ),
        ),
      );

      final fakeButton = tester.widget<FakeButton>(find.byType(FakeButton));
      expect(fakeButton.color, customTheme.primaryColor);
      expect(fakeButton.labelColor, customTheme.colorScheme.onPrimary);
    });

    testWidgets('is disabled when onPressed is null',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: FakeButtonPrimary(
              onPressed: null,
              label: 'Disabled Button',
            ),
          ),
        ),
      );

      final fakeButton = tester.widget<FakeButton>(find.byType(FakeButton));
      expect(fakeButton.onPressed, isNull);
    });
  });
}
