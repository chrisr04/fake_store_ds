import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fake_store_ds/fake_store_ds.dart';

void main() {
  testWidgets('FakeSpacerXXL creates a FakeSpacer with the correct properties',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: FakeSpacerXXL(axis: FakeSpacerAxis.x),
        ),
      ),
    );

    final fakeSpacerFinder = find.byType(FakeSpacer);

    expect(fakeSpacerFinder, findsOneWidget);

    final FakeSpacer fakeSpacer = tester.widget(fakeSpacerFinder);
    expect(fakeSpacer.axis, FakeSpacerAxis.x);
    expect(fakeSpacer.value, FakeSpacing.xxl);
  });

  testWidgets(
      'FakeSpacerXXL creates a FakeSpacer with the correct properties (vertical)',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: FakeSpacerXXL(axis: FakeSpacerAxis.y),
        ),
      ),
    );

    final fakeSpacerFinder = find.byType(FakeSpacer);

    expect(fakeSpacerFinder, findsOneWidget);

    final FakeSpacer fakeSpacer = tester.widget(fakeSpacerFinder);
    expect(fakeSpacer.axis, FakeSpacerAxis.y);
    expect(fakeSpacer.value, FakeSpacing.xxl);
  });

  testWidgets(
      'FakeSpacerXXL creates a FakeSpacer with the correct properties (null axis)',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: FakeSpacerXXL(),
        ),
      ),
    );

    final fakeSpacerFinder = find.byType(FakeSpacer);

    expect(fakeSpacerFinder, findsOneWidget);

    final FakeSpacer fakeSpacer = tester.widget(fakeSpacerFinder);
    expect(fakeSpacer.axis, null);
    expect(fakeSpacer.value, FakeSpacing.xxl);
  });
}
