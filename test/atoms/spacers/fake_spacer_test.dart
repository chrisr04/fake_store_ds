import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fake_store_ds/fake_store_ds.dart';

void main() {
  testWidgets('FakeSpacer creates vertical space by default',
      (WidgetTester tester) async {
    const double spaceValue = 20.0;

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Column(
            children: [
              Container(width: 100, height: 50, color: Colors.red),
              const FakeSpacer(value: spaceValue),
              Container(width: 100, height: 50, color: Colors.blue),
            ],
          ),
        ),
      ),
    );

    final fakeSpacer =
        find.byType(SizedBox).evaluate().first.widget as SizedBox;

    expect(fakeSpacer.height, spaceValue);
    expect(fakeSpacer.width, isNull);
  });

  testWidgets('FakeSpacer creates horizontal space when axis is x',
      (WidgetTester tester) async {
    const double spaceValue = 30.0;

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Row(
            children: [
              Container(width: 50, height: 100, color: Colors.red),
              const FakeSpacer(axis: FakeSpacerAxis.x, value: spaceValue),
              Container(width: 50, height: 100, color: Colors.blue),
            ],
          ),
        ),
      ),
    );

    // Find the FakeSpacer widget
    final fakeSpacer =
        find.byType(SizedBox).evaluate().first.widget as SizedBox;

    expect(fakeSpacer.width, spaceValue);
    expect(fakeSpacer.height, isNull);
  });
}
