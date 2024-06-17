import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fake_store_ds/fake_store_ds.dart';

void main() {
  testWidgets('FakeTopStickyCard renders correctly',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: FakeTopStickyCard(
            child: Text('Test Child'),
          ),
        ),
      ),
    );

    expect(find.text('Test Child'), findsOneWidget);
  });
}
