import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fake_store_ds/fake_store_ds.dart';

void main() {
  testWidgets('FakeSpacerM creates a FakeSpacer with the correct properties',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: FakeSpacerM(axis: FakeSpacerAxis.x),
        ),
      ),
    );

    final fakeSpacerFinder = find.byType(FakeSpacer);

    expect(fakeSpacerFinder, findsOneWidget);

    final FakeSpacer fakeSpacer = tester.widget(fakeSpacerFinder);
    expect(fakeSpacer.axis, FakeSpacerAxis.x);
    expect(fakeSpacer.value, FakeSpacing.md);
  });

  testWidgets(
      'FakeSpacerM creates a FakeSpacer with the correct properties (vertical)',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: FakeSpacerM(axis: FakeSpacerAxis.y),
        ),
      ),
    );

    final fakeSpacerFinder = find.byType(FakeSpacer);

    expect(fakeSpacerFinder, findsOneWidget);

    final FakeSpacer fakeSpacer = tester.widget(fakeSpacerFinder);
    expect(fakeSpacer.axis, FakeSpacerAxis.y);
    expect(fakeSpacer.value, FakeSpacing.md);
  });

  testWidgets(
      'FakeSpacerM creates a FakeSpacer with the correct properties (null axis)',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: FakeSpacerM(),
        ),
      ),
    );

    final fakeSpacerFinder = find.byType(FakeSpacer);

    expect(fakeSpacerFinder, findsOneWidget);

    final FakeSpacer fakeSpacer = tester.widget(fakeSpacerFinder);
    expect(fakeSpacer.axis, null);
    expect(fakeSpacer.value, FakeSpacing.md);
  });
}
