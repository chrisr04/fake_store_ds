import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fake_store_ds/fake_store_ds.dart';

void main() {
  testWidgets('FakeIcon displays the correct icon, size, and color',
      (WidgetTester tester) async {
    const testIcon = Icons.star;
    const testSize = 48.0;
    const testColor = Colors.red;

    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: FakeIcon(
            testIcon,
            size: testSize,
            color: testColor,
          ),
        ),
      ),
    );

    final iconFinder = find.byType(Icon);

    expect(iconFinder, findsOneWidget);

    final Icon iconWidget = tester.widget(iconFinder);

    expect(iconWidget.icon, testIcon);
    expect(iconWidget.size, testSize);
    expect(iconWidget.color, testColor);
  });

  testWidgets('FakeIcon uses default size and color when not specified',
      (WidgetTester tester) async {
    const testIcon = Icons.star;

    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: FakeIcon(testIcon),
        ),
      ),
    );

    final iconFinder = find.byType(Icon);

    expect(iconFinder, findsOneWidget);

    final Icon iconWidget = tester.widget(iconFinder);

    expect(iconWidget.icon, testIcon);
    expect(iconWidget.size, isNull);
    expect(iconWidget.color, isNull);
  });
}
