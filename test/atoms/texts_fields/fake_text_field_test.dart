import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fake_store_ds/fake_store_ds.dart';

void main() {
  testWidgets(
      'FakeTextField displays initial value, hint, and responds to input',
      (WidgetTester tester) async {
    const fakeTextFieldKey = Key('fakeTextField');

    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: FakeTextField(
            key: fakeTextFieldKey,
            hintText: 'Enter text here',
            initialValue: 'Initial value',
          ),
        ),
      ),
    );

    final fakeTextFieldFinder = find.byKey(fakeTextFieldKey);

    expect(fakeTextFieldFinder, findsOneWidget);

    expect(find.text('Initial value'), findsOneWidget);

    expect(find.text('Enter text here'), findsOneWidget);

    await tester.enterText(fakeTextFieldFinder, 'Hello, World!');

    expect(find.text('Hello, World!'), findsOneWidget);

    await tester.pump();
  });

  testWidgets('FakeTextField responds to onChanged callback',
      (WidgetTester tester) async {
    String? changedText;

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: FakeTextField(
            onChanged: (text) {
              changedText = text;
            },
          ),
        ),
      ),
    );

    final fakeTextFieldFinder = find.byType(FakeTextField);

    await tester.enterText(fakeTextFieldFinder, 'Test input');

    expect(changedText, 'Test input');
  });

  testWidgets('FakeTextField displays prefix and suffix icons',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: FakeTextField(
            prefixIcon: Icon(Icons.search),
            suffixIcon: Icon(Icons.clear),
          ),
        ),
      ),
    );

    expect(find.byIcon(Icons.search), findsOneWidget);

    expect(find.byIcon(Icons.clear), findsOneWidget);
  });

  testWidgets('FakeTextField handles obscure text',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: FakeTextField(
            obscureText: true,
            initialValue: 'password123',
          ),
        ),
      ),
    );

    final textFieldFinder = find.byType(TextField);
    final textField = tester.widget<TextField>(textFieldFinder);
    expect(textField.obscureText, isTrue);
  });

  testWidgets('FakeTextField validates input', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Form(
            child: FakeTextField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              initialValue: 'initial text',
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Field cannot be empty';
                }
                return null;
              },
            ),
          ),
        ),
      ),
    );

    final textFieldFinder = find.byType(FakeTextField);
    await tester.enterText(textFieldFinder, '');
    await tester.pump();

    expect(find.text('Field cannot be empty'), findsOneWidget);
  });
}
