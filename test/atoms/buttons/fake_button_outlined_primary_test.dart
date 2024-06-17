import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fake_store_ds/fake_store_ds.dart';

void main() {
  testWidgets('FakeButtonOutlinedPrimary displays label and responds to tap',
      (WidgetTester tester) async {
    const buttonText = 'Test Button';

    bool isPressed = false;

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: FakeButtonOutlinedPrimary(
            onPressed: () {
              isPressed = true;
            },
            label: buttonText,
          ),
        ),
      ),
    );

    expect(find.text(buttonText), findsOneWidget);

    expect(isPressed, isFalse);

    await tester.tap(find.text(buttonText));
    await tester.pump();

    expect(isPressed, isTrue);
  });

  testWidgets('FakeButtonOutlinedPrimary is disabled when onPressed is null',
      (WidgetTester tester) async {
    const buttonText = 'Disabled Button';

    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: FakeButtonOutlinedPrimary(
            onPressed: null,
            label: buttonText,
          ),
        ),
      ),
    );

    final fakeButton = tester.widget<FakeButton>(find.byType(FakeButton));
    expect(fakeButton.onPressed, isNull);
  });
}
