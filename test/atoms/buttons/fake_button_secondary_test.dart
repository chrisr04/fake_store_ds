import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fake_store_ds/fake_store_ds.dart';

void main() {
  testWidgets('FakeButtonSecondary renders with given label and size',
      (WidgetTester tester) async {
    const label = 'Test Button';
    const size = FakeButtonSize.medium;

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: FakeButtonSecondary(
            onPressed: () {},
            label: label,
            size: size,
          ),
        ),
      ),
    );

    expect(find.text(label), findsOneWidget);
  });

  testWidgets('FakeButtonSecondary triggers onPressed callback when tapped',
      (WidgetTester tester) async {
    bool wasPressed = false;
    const label = 'Test Button';

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: FakeButtonSecondary(
            onPressed: () {
              wasPressed = true;
            },
            label: label,
          ),
        ),
      ),
    );

    expect(wasPressed, isFalse);

    await tester.tap(find.byType(FakeButtonSecondary));
    await tester.pump();

    expect(wasPressed, isTrue);
  });

  testWidgets('FakeButtonSecondary uses secondary color scheme',
      (WidgetTester tester) async {
    const label = 'Test Button';

    await tester.pumpWidget(
      MaterialApp(
        theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch().copyWith(
            secondary: Colors.red,
            onSecondary: Colors.white,
          ),
        ),
        home: Scaffold(
          body: FakeButtonSecondary(
            onPressed: () {},
            label: label,
          ),
        ),
      ),
    );

    final buttonFinder = find.byType(FakeButton);

    final FakeButton buttonWidget = tester.widget(buttonFinder);
    expect(buttonWidget.color, Colors.red);
    expect(buttonWidget.labelColor, Colors.white);
  });
}
