import 'package:fake_store_ds/fake_store_ds.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('FakeInformationCard renders correctly',
      (WidgetTester tester) async {
    bool cardTapped = false;

    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: FakeInformationCard(
          onTap: () {
            cardTapped = true;
          },
          title: 'Test Title',
          description: 'Test Description',
          titleSize: 20.0,
          titleWeight: FontWeight.bold,
          descriptionSize: 16.0,
          descriptionWeight: FontWeight.normal,
        ),
      ),
    ));

    expect(find.text('Test Title'), findsOneWidget);
    expect(find.text('Test Description'), findsOneWidget);

    expect(find.byIcon(Icons.chevron_right_outlined), findsOneWidget);

    await tester.tap(find.byType(Card));
    await tester.pump();
    expect(cardTapped, isTrue);
  });
}
