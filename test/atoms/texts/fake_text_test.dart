import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fake_store_ds/fake_store_ds.dart';

void main() {
  testWidgets('FakeText displays text with correct properties',
      (WidgetTester tester) async {
    const label = 'Hello, World!';
    const fontSize = 24.0;
    const textAlign = TextAlign.center;
    const maxLines = 2;
    const color = Colors.blue;
    const fontWeight = FontWeight.bold;
    const fontStyle = FontStyle.italic;
    const letterSpacing = 2.0;
    const decoration = TextDecoration.underline;
    const shadows = [
      Shadow(
        offset: Offset(2.0, 2.0),
        blurRadius: 3.0,
        color: Colors.black,
      ),
    ];
    const textOverflow = TextOverflow.ellipsis;

    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: FakeText(
            label: label,
            fontSize: fontSize,
            textAlign: textAlign,
            maxLines: maxLines,
            color: color,
            fontWeight: fontWeight,
            fontStyle: fontStyle,
            letterSpacing: letterSpacing,
            decoration: decoration,
            shadows: shadows,
            textOverflow: textOverflow,
          ),
        ),
      ),
    );

    final textFinder = find.text(label);
    expect(textFinder, findsOneWidget);

    final Text textWidget = tester.widget(textFinder);
    final TextStyle style = textWidget.style!;
    expect(textWidget.textAlign, textAlign);
    expect(textWidget.maxLines, maxLines);
    expect(style.color, color);
    expect(style.fontSize, fontSize);
    expect(style.fontWeight, fontWeight);
    expect(style.fontStyle, fontStyle);
    expect(style.letterSpacing, letterSpacing);
    expect(style.decoration, decoration);
    expect(style.shadows, shadows);
    expect(style.overflow, textOverflow);
  });
}
