import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fake_store_ds/fake_store_ds.dart';

void main() {
  group('FakeButtonOutlinedSecondary Widget Test', () {
    testWidgets('renders correctly with required parameters',
        (WidgetTester tester) async {
      const testKey = Key('fakeButton');
      const testLabel = 'Test Button';
      bool buttonPressed = false;

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: FakeButtonOutlinedSecondary(
              key: testKey,
              onPressed: () {
                buttonPressed = true;
              },
              label: testLabel,
            ),
          ),
        ),
      );

      expect(find.byKey(testKey), findsOneWidget);
      expect(find.text(testLabel), findsOneWidget);

      await tester.tap(find.byKey(testKey));
      await tester.pumpAndSettle();
      expect(buttonPressed, isTrue);
    });

    testWidgets('renders correctly with default size',
        (WidgetTester tester) async {
      const testLabel = 'Test Button';

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: FakeButtonOutlinedSecondary(
              onPressed: () {},
              label: testLabel,
            ),
          ),
        ),
      );

      final fakeButton = tester.widget<FakeButton>(find.byType(FakeButton));
      expect(fakeButton.size, FakeButtonSize.medium);
    });

    testWidgets('renders correctly with custom size',
        (WidgetTester tester) async {
      const testLabel = 'Test Button';
      const customSize = FakeButtonSize.large;

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: FakeButtonOutlinedSecondary(
              onPressed: () {},
              label: testLabel,
              size: customSize,
            ),
          ),
        ),
      );

      final fakeButton = tester.widget<FakeButton>(find.byType(FakeButton));
      expect(fakeButton.size, customSize);
    });

    testWidgets('button is disabled when onPressed is null',
        (WidgetTester tester) async {
      const testLabel = 'Test Button';

      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: FakeButtonOutlinedSecondary(
              onPressed: null,
              label: testLabel,
            ),
          ),
        ),
      );

      final fakeButton = tester.widget<FakeButton>(find.byType(FakeButton));
      expect(fakeButton.onPressed, isNull);
    });
  });
}
