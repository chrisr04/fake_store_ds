import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fake_store_ds/fake_store_ds.dart';

void main() {
  testWidgets('FakeErrorTemplate renders correctly',
      (WidgetTester tester) async {
    bool buttonPressed = false;
    const String imagePath = 'assets/images/atom.png';
    const String errorText = 'Oops! Something went wrong.';
    const String descriptionText = 'An error occurred while loading data.';
    const String buttonLabel = 'Retry';

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: FakeErrorTemplate(
            imagePath: imagePath,
            error: errorText,
            description: descriptionText,
            onButtonPressed: () {
              buttonPressed = true;
            },
            buttonLabel: buttonLabel,
          ),
        ),
      ),
    );

    expect(find.text(errorText), findsOneWidget);
    expect(find.text(descriptionText), findsOneWidget);
    expect(find.text(buttonLabel), findsOneWidget);

    await tester.tap(find.text(buttonLabel));
    await tester.pump();
    expect(buttonPressed, isTrue);
  });
}
