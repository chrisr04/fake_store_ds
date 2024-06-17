import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fake_store_ds/fake_store_ds.dart';

void main() {
  group('FakeButton Widget Tests', () {
    testWidgets('FakeButton renders with required parameters',
        (WidgetTester tester) async {
      const testLabel = 'Test Button';

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: FakeButton(
              onPressed: () {},
              label: testLabel,
            ),
          ),
        ),
      );

      expect(find.text(testLabel), findsOneWidget);
      expect(find.byType(MaterialButton), findsOneWidget);
    });

    testWidgets('FakeButton calls onPressed when tapped',
        (WidgetTester tester) async {
      bool wasPressed = false;

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: FakeButton(
              onPressed: () {
                wasPressed = true;
              },
              label: 'Press me',
            ),
          ),
        ),
      );

      await tester.tap(find.byType(FakeButton));
      await tester.pumpAndSettle();

      expect(wasPressed, isTrue);
    });

    testWidgets('FakeButton is disabled when onPressed is null',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: FakeButton(
              onPressed: null,
              label: 'Disabled',
            ),
          ),
        ),
      );

      final materialButton =
          tester.widget<MaterialButton>(find.byType(MaterialButton));
      expect(materialButton.onPressed, isNull);
    });

    testWidgets('FakeButton renders with custom color, height, and shape',
        (WidgetTester tester) async {
      const testColor = Colors.red;
      const testHeight = 50.0;
      final testShape = RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      );

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: FakeButton(
              onPressed: () {},
              label: 'Custom Button',
              color: testColor,
              height: testHeight,
              shape: testShape,
            ),
          ),
        ),
      );

      final materialButton =
          tester.widget<MaterialButton>(find.byType(MaterialButton));
      expect(materialButton.color, testColor);
      expect(materialButton.height, testHeight);
      expect(materialButton.shape, testShape);
    });

    testWidgets('FakeButton renders with different sizes',
        (WidgetTester tester) async {
      const testLabelSmall = 'Small Button';
      const testLabelMedium = 'Medium Button';
      const testLabelLarge = 'Large Button';

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Column(
              children: [
                FakeButton(
                  onPressed: () {},
                  label: testLabelSmall,
                  size: FakeButtonSize.small,
                ),
                FakeButton(
                  onPressed: () {},
                  label: testLabelMedium,
                  size: FakeButtonSize.medium,
                ),
                FakeButton(
                  onPressed: () {},
                  label: testLabelLarge,
                  size: FakeButtonSize.large,
                ),
              ],
            ),
          ),
        ),
      );

      expect(find.text(testLabelSmall), findsOneWidget);
      expect(find.text(testLabelMedium), findsOneWidget);
      expect(find.text(testLabelLarge), findsOneWidget);
    });

    testWidgets('FakeButton renders with custom label color',
        (WidgetTester tester) async {
      const testLabelColor = Colors.blue;

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: FakeButton(
              onPressed: () {},
              label: 'Custom Label Color',
              labelColor: testLabelColor,
            ),
          ),
        ),
      );

      final textWidget = tester.widget<Text>(find.text('Custom Label Color'));
      expect(textWidget.style?.color, testLabelColor);
    });
  });
}
