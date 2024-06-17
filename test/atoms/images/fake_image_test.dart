import 'package:fake_store_ds/fake_store_ds.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('FakeImage displays image with given properties',
      (WidgetTester tester) async {
    const testImageProvider = AssetImage('assets/images/atom.png');

    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: FakeImage(
            image: testImageProvider,
            width: 100,
            height: 100,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );

    final imageFinder = find.byType(Image);
    expect(imageFinder, findsOneWidget);

    final Image imageWidget = tester.widget<Image>(imageFinder);
    expect(imageWidget.image, equals(testImageProvider));
    expect(imageWidget.width, equals(100));
    expect(imageWidget.height, equals(100));
    expect(imageWidget.fit, equals(BoxFit.cover));
  });
}
