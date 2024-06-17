import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fake_store_ds/fake_store_ds.dart';

void main() {
  testWidgets(
      'FakeButtonTertiary renders with correct label and calls onPressed',
      (WidgetTester tester) async {
    const testLabel = 'Test Button';
    bool pressed = false;

    await tester.pumpWidget(
      MaterialApp(
        theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch().copyWith(
            tertiary: Colors.green,
            onTertiary: Colors.white,
          ),
        ),
        home: Scaffold(
          body: FakeButtonTertiary(
            onPressed: () {
              pressed = true;
            },
            label: testLabel,
          ),
        ),
      ),
    );

    final buttonFinder = find.text(testLabel);
    expect(buttonFinder, findsOneWidget);

    await tester.tap(buttonFinder);
    await tester.pump();

    expect(pressed, isTrue);
  });

  testWidgets('FakeButtonTertiary is disabled when onPressed is null',
      (WidgetTester tester) async {
    const testLabel = 'Disabled Button';

    await tester.pumpWidget(
      MaterialApp(
        theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch().copyWith(
            tertiary: Colors.green,
            onTertiary: Colors.white,
          ),
        ),
        home: const Scaffold(
          body: FakeButtonTertiary(
            onPressed: null,
            label: testLabel,
          ),
        ),
      ),
    );

    final buttonFinder = find.text(testLabel);
    expect(buttonFinder, findsOneWidget);

    await tester.tap(buttonFinder);
    await tester.pump();

    final materialButtonFinder = find.byType(MaterialButton);
    final materialButton = tester.widget<MaterialButton>(materialButtonFinder);
    expect(materialButton.enabled, isFalse);
  });

  testWidgets('FakeButtonTertiary has correct color and label color',
      (WidgetTester tester) async {
    const testLabel = 'Color Button';

    await tester.pumpWidget(
      MaterialApp(
        theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch().copyWith(
            tertiary: Colors.green,
            onTertiary: Colors.white,
          ),
        ),
        home: Scaffold(
          body: FakeButtonTertiary(
            onPressed: () {},
            label: testLabel,
          ),
        ),
      ),
    );

    final buttonFinder = find.byType(FakeButton);
    final FakeButton buttonWidget = tester.widget(buttonFinder);

    expect(buttonWidget.color, Colors.green);
    expect(buttonWidget.labelColor, Colors.white);
  });
}
