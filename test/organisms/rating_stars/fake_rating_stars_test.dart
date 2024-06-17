import 'package:fake_store_ds/fake_store_ds.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('FakeRatingStars widget displays correct stars',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: FakeRatingStars(rating: 3.5),
        ),
      ),
    );

    expect(find.byIcon(Icons.star_rate_rounded), findsNWidgets(3));
    expect(find.byIcon(Icons.star_half_rounded), findsOneWidget);
    expect(find.byIcon(Icons.star_border_rounded), findsOneWidget);
  });
}
