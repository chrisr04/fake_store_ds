import 'package:fake_store_ds/fake_store_ds.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('FakeListTile widget test', (WidgetTester tester) async {
    bool tapped = false;

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: FakeListTile(
            leadingIcon: Icons.person,
            title: 'John Doe',
            subtitle: 'Software Engineer',
            onTap: () {
              tapped = true;
            },
          ),
        ),
      ),
    );

    final fakeListTileFinder = find.byType(ListTile);
    expect(fakeListTileFinder, findsOneWidget);

    ListTile fakeListTile = tester.widget(fakeListTileFinder);
    expect(fakeListTile.leading.runtimeType, DecoratedBox);
    expect(fakeListTile.title, isA<FakeTextLarge>());
    expect(fakeListTile.subtitle, isA<FakeTextMedium>());
    expect(fakeListTile.trailing, isA<FakeIcon>());

    await tester.tap(fakeListTileFinder);
    await tester.pump();
    expect(tapped, isTrue);
  });
}
