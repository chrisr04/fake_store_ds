import 'package:fake_store_ds/fake_store_ds.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('FakeLightAppBar with title renders correctly',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: Scaffold(
        appBar: FakeLightAppBar(title: 'Test Title'),
      ),
    ));

    expect(find.text('Test Title'), findsOneWidget);

    final appBarFinder = find.byType(AppBar);
    expect(appBarFinder, findsOneWidget);

    final appBar = tester.widget<AppBar>(appBarFinder);
    expect(appBar.backgroundColor, Colors.transparent);

    final titleFinder = find.text('Test Title');
    expect(titleFinder, findsOneWidget);
  });
}
