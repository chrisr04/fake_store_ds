import 'package:fake_store_ds/fake_store_ds.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('FakeErrorPage displays correctly', (WidgetTester tester) async {
    const String testAppBarTitle = 'Error Page';
    const String testImagePath = 'assets/images/atom.png';
    const String testError = '404 Not Found';
    const String testDescription = 'The page you requested could not be found.';
    const String testButtonLabel = 'Retry';
    bool buttonPressed = false;

    await tester.pumpWidget(
      MaterialApp(
        home: FakeErrorPage(
          appBarTitle: testAppBarTitle,
          imagePath: testImagePath,
          error: testError,
          description: testDescription,
          buttonLabel: testButtonLabel,
          onButtonPressed: () {
            buttonPressed = true;
          },
        ),
      ),
    );

    expect(find.text(testAppBarTitle), findsOneWidget);

    expect(
        find.byWidgetPredicate((widget) =>
            widget is Image &&
            widget.image is AssetImage &&
            (widget.image as AssetImage).assetName == testImagePath),
        findsOneWidget);

    expect(find.text(testError), findsOneWidget);

    expect(find.text(testDescription), findsOneWidget);

    expect(find.text(testButtonLabel), findsOneWidget);

    await tester.tap(find.text(testButtonLabel));
    await tester.pump();
    expect(buttonPressed, isTrue);
  });
}
