import 'package:fake_store_ds/fake_store_ds.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('FakeChip widget renders correctly', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: FakeChip(label: 'Test Chip'),
        ),
      ),
    );

    expect(find.byType(FakeChip), findsOneWidget);

    expect(find.text('Test Chip'), findsOneWidget);

    final decoratedBox = tester.widget<DecoratedBox>(find.byType(DecoratedBox));
    expect(
        decoratedBox.decoration,
        BoxDecoration(
          color: FakeColorsFoundation.tertiaryColor,
          borderRadius: BorderRadius.circular(50.0),
        ));

    final fakeTextLarge =
        tester.widget<FakeTextLarge>(find.byType(FakeTextLarge));
    expect(fakeTextLarge.label, 'Test Chip');
    expect(fakeTextLarge.color, FakeColorsFoundation.onTertiary);
    expect(fakeTextLarge.weight, FontWeight.w500);
  });
}
