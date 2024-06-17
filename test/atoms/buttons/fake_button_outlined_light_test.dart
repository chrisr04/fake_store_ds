import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fake_store_ds/fake_store_ds.dart';

void main() {
  group('FakeButtonOutlinedLight Widget Test', () {
    testWidgets('renders correctly with default properties',
        (WidgetTester tester) async {
      const label = 'Test Button';

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: FakeButtonOutlinedLight(
              onPressed: () {},
              label: label,
            ),
          ),
        ),
      );

      expect(find.text(label), findsOneWidget);
      expect(find.byType(FakeButtonOutlinedLight), findsOneWidget);
    });

    testWidgets('triggers onPressed callback when tapped',
        (WidgetTester tester) async {
      bool wasPressed = false;
      const label = 'Test Button';

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: FakeButtonOutlinedLight(
              onPressed: () {
                wasPressed = true;
              },
              label: label,
            ),
          ),
        ),
      );

      await tester.tap(find.text(label));
      await tester.pump();
      expect(wasPressed, isTrue);
    });

    testWidgets('does not trigger onPressed when disabled',
        (WidgetTester tester) async {
      const label = 'Test Button';

      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: FakeButtonOutlinedLight(
              onPressed: null,
              label: label,
            ),
          ),
        ),
      );

      final fakeButton = tester.widget<FakeButton>(find.byType(FakeButton));
      expect(fakeButton.onPressed, isNull);
    });

    testWidgets('renders with different sizes', (WidgetTester tester) async {
      const label = 'Test Button';

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: FakeButtonOutlinedLight(
              onPressed: () {},
              label: label,
              size: FakeButtonSize.small,
            ),
          ),
        ),
      );

      final buttonFinder = find.byType(FakeButtonOutlinedLight);
      expect(buttonFinder, findsOneWidget);

      final button = tester.widget<FakeButtonOutlinedLight>(buttonFinder);
      expect(button.size, FakeButtonSize.small);
    });
  });
}
