import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fake_store_ds/fake_store_ds.dart';

void main() {
  testWidgets('FakeDefaultAppBar displays title', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          appBar: const FakeDefaultAppBar(title: 'Test Title'),
          body: Container(),
        ),
      ),
    );

    expect(find.text('Test Title'), findsOneWidget);
  });
}
