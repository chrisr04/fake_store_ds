import 'package:fake_store_ds/fake_store_ds.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('FakeModal renders correctly', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: FakeModal(
            canClose: true,
            title: 'Test Modal',
            description: 'This is a test description.',
            icon: Icon(Icons.info),
            bottomWidget: Text('Bottom Widget'),
          ),
        ),
      ),
    );

    expect(find.text('Test Modal'), findsOneWidget);

    expect(find.text('This is a test description.'), findsOneWidget);

    expect(find.byIcon(Icons.info), findsOneWidget);

    expect(find.text('Bottom Widget'), findsOneWidget);
  });

  testWidgets('FakeModal without description renders correctly',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: FakeModal(
            canClose: true,
            title: 'Test Modal',
          ),
        ),
      ),
    );

    expect(find.text('Test Modal'), findsOneWidget);

    expect(find.text('This is a test description.'), findsNothing);
  });

  testWidgets('FakeModal without icon renders correctly',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: FakeModal(
            canClose: true,
            title: 'Test Modal',
          ),
        ),
      ),
    );

    expect(find.text('Test Modal'), findsOneWidget);

    expect(find.byIcon(Icons.info), findsNothing);
  });

  testWidgets('FakeModal without bottom widget renders correctly',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: FakeModal(
            canClose: true,
            title: 'Test Modal',
          ),
        ),
      ),
    );

    expect(find.text('Test Modal'), findsOneWidget);

    expect(find.text('Bottom Widget'), findsNothing);
  });
}
