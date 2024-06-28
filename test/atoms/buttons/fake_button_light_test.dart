import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fake_store_ds/fake_store_ds.dart';

void main() {
  testWidgets('FakeButtonLight renders with correct label',
      (WidgetTester tester) async {
    const testLabel = 'Test Button';

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: FakeButtonLight(
            onPressed: () {},
            label: testLabel,
          ),
        ),
      ),
    );

    expect(find.text(testLabel), findsOneWidget);
  });

  testWidgets('FakeButtonLight calls onPressed callback when tapped',
      (WidgetTester tester) async {
    bool pressed = false;

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: FakeButtonLight(
            onPressed: () {
              pressed = true;
            },
            label: 'Test Button',
          ),
        ),
      ),
    );

    await tester.tap(find.byType(FakeButton));
    await tester.pump();

    expect(pressed, isTrue);
  });

  testWidgets('FakeButtonLight is disabled when onPressed is null',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: FakeButtonLight(
            onPressed: null,
            label: 'Test Button',
          ),
        ),
      ),
    );

    final FakeButton button = tester.widget(find.byType(FakeButton));
    expect(button.onPressed, isNull);
  });

  testWidgets('FakeButtonLight uses correct theme colors',
      (WidgetTester tester) async {
    const testKey = Key('fake_button_light');
    const testLabel = 'Test Button';

    await tester.pumpWidget(
      MaterialApp(
        theme: ThemeData.light().copyWith(
          colorScheme: const ColorScheme.light(
            surface: Colors.white,
            onSurface: Colors.black,
          ),
        ),
        home: Scaffold(
          body: FakeButtonLight(
            key: testKey,
            onPressed: () {},
            label: testLabel,
          ),
        ),
      ),
    );

    final FakeButton button = tester.widget(find.byType(FakeButton));
    expect(button.color, Colors.white);
    expect(button.labelColor, Colors.black);
  });
}
