import 'package:fake_store_ds/fake_store_ds.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets(
      'FakeModalDecision.show displays dialog and handles button presses',
      (WidgetTester tester) async {
    bool filledButtonPressed = false;
    bool outlinedButtonPressed = false;
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: Builder(
          builder: (context) => ElevatedButton(
            onPressed: () async {
              await FakeModalDecision.show(
                context,
                title: 'Confirmation',
                description: 'Are you sure you want to proceed?',
                filledButtonLabel: 'Yes',
                outlinedButtonLabel: 'No',
                onPressedFilledButton: () {
                  filledButtonPressed = true;
                },
                onPressedOutlinedButton: () {
                  outlinedButtonPressed = true;
                },
              );
            },
            child: const Text('Show Dialog'),
          ),
        ),
      ),
    ));

    await tester.tap(find.text('Show Dialog'));
    await tester.pumpAndSettle();

    expect(find.text('Confirmation'), findsOneWidget);
    expect(find.text('Are you sure you want to proceed?'), findsOneWidget);

    expect(find.text('Yes'), findsOneWidget);
    expect(find.text('No'), findsOneWidget);

    await tester.tap(find.text('Yes'));
    await tester.pump();
    expect(filledButtonPressed, isTrue);

    await tester.tap(find.text('No'));
    await tester.pump();
    expect(outlinedButtonPressed, isTrue);
  });
}
