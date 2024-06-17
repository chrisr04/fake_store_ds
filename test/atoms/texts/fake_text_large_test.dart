import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fake_store_ds/fake_store_ds.dart';

void main() {
  testWidgets('FakeTextLarge displays correct properties',
      (WidgetTester tester) async {
    const testKey = Key('testKey');

    const testLabel = 'Test Label';
    const testTextAlign = TextAlign.center;
    const testWeight = FontWeight.bold;
    const testColor = Colors.red;
    const testTextOverflow = TextOverflow.ellipsis;
    const testLetterSpacing = 2.0;
    const testMaxLines = 1;
    const testDecoration = TextDecoration.underline;
    const testShadows = [
      Shadow(offset: Offset(1, 1), blurRadius: 3, color: Colors.black)
    ];
    const testFontStyle = FontStyle.italic;

    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: FakeTextLarge(
            testLabel,
            key: testKey,
            textAlign: testTextAlign,
            weight: testWeight,
            color: testColor,
            textOverflow: testTextOverflow,
            letterSpacing: testLetterSpacing,
            maxLines: testMaxLines,
            decoration: testDecoration,
            shadows: testShadows,
            fontStyle: testFontStyle,
          ),
        ),
      ),
    );

    final fakeTextFinder = find.byKey(testKey);
    expect(fakeTextFinder, findsOneWidget);

    final fakeTextWidget = tester.widget<FakeTextLarge>(fakeTextFinder);
    expect(fakeTextWidget.label, testLabel);
    expect(fakeTextWidget.textAlign, testTextAlign);
    expect(fakeTextWidget.color, testColor);
    expect(fakeTextWidget.textOverflow, testTextOverflow);
    expect(fakeTextWidget.letterSpacing, testLetterSpacing);
    expect(fakeTextWidget.maxLines, testMaxLines);
    expect(fakeTextWidget.decoration, testDecoration);
    expect(fakeTextWidget.shadows, testShadows);
    expect(fakeTextWidget.fontStyle, testFontStyle);
  });
}
