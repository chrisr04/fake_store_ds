import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fake_store_ds/fake_store_ds.dart';

void main() {
  group('FakeTextFieldObscure', () {
    testWidgets('displays hintText', (WidgetTester tester) async {
      const hintText = 'Enter text';

      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: FakeTextFieldObscure(
              hintText: hintText,
            ),
          ),
        ),
      );

      expect(find.text(hintText), findsOneWidget);
    });

    testWidgets('obscures text', (WidgetTester tester) async {
      final controller = TextEditingController();
      const hintText = 'Enter text';

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: FakeTextFieldObscure(
              controller: controller,
              hintText: hintText,
            ),
          ),
        ),
      );

      await tester.enterText(find.byType(TextField), 'password');
      await tester.pump();

      final textField = tester.widget<TextField>(find.byType(TextField));
      expect(textField.obscureText, isTrue);
    });

    testWidgets('calls onChanged when text is changed',
        (WidgetTester tester) async {
      final controller = TextEditingController();
      String? changedText;
      const hintText = 'Enter text';

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: FakeTextFieldObscure(
              controller: controller,
              hintText: hintText,
              onChanged: (text) {
                changedText = text;
              },
            ),
          ),
        ),
      );

      final textFieldFinder = find.byType(TextField);
      final textField = tester.widget<TextField>(textFieldFinder);

      await tester.enterText(textFieldFinder, 'password');
      await tester.pump();

      expect(changedText, 'password');
      expect(textField.obscureText, isTrue);
    });

    testWidgets('displays validation error', (WidgetTester tester) async {
      final controller = TextEditingController();
      const hintText = 'Enter text';
      const errorMessage = 'Invalid input';

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Form(
              child: FakeTextFieldObscure(
                controller: controller,
                hintText: hintText,
                validator: (value) =>
                    value == null || value.isEmpty ? errorMessage : null,
                autovalidateMode: AutovalidateMode.always,
              ),
            ),
          ),
        ),
      );

      await tester.enterText(find.byType(TextField), '');
      await tester.pump();

      expect(find.text(errorMessage), findsOneWidget);
    });
  });
}
