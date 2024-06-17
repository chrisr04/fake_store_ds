import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fake_store_ds/fake_store_ds.dart';

void main() {
  testWidgets('FakeSearchAppBar renders correctly',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          appBar: FakeSearchAppBar(
            showBackButton: false,
            hintText: 'Search...',
          ),
        ),
      ),
    );

    expect(find.text('Search...'), findsOneWidget);
    expect(find.byType(BackButton), findsNothing);
  });

  testWidgets('FakeSearchAppBar with back button', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          appBar: FakeSearchAppBar(
            showBackButton: true,
            hintText: 'Search...',
          ),
        ),
      ),
    );

    expect(find.text('Search...'), findsOneWidget);
    expect(find.byType(BackButton), findsOneWidget);
  });
}
