import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fake_store_ds/fake_store_ds.dart';

void main() {
  testWidgets('FakeModalLoading widget test', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: Builder(
          builder: (BuildContext context) {
            return ElevatedButton(
              onPressed: () async {
                await FakeModalLoading.show(context, loadingText: 'Loading...');
              },
              child: const Text('Show Modal'),
            );
          },
        ),
      ),
    ));

    await tester.tap(find.text('Show Modal'));
    await tester.pump();

    expect(find.byType(CircularProgressIndicator), findsOneWidget);
    expect(find.text('Loading...'), findsOneWidget);
  });
}
