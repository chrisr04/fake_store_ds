import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fake_store_ds/fake_store_ds.dart';
import 'package:mocktail_image_network/mocktail_image_network.dart';

void main() {
  testWidgets('FakeImageNetwork displays image with correct properties',
      (WidgetTester tester) async {
    const testUrl = 'https://example.com/image.jpg';
    const testWidth = 100.0;
    const testHeight = 100.0;
    const testFit = BoxFit.cover;

    await mockNetworkImages(
      () async => tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: FakeImageNetwork(
              url: testUrl,
              width: testWidth,
              height: testHeight,
              fit: testFit,
            ),
          ),
        ),
      ),
    );

    expect(find.byType(FakeImage), findsOneWidget);

    final FakeImage fakeImageWidget = tester.widget(find.byType(FakeImage));
    final NetworkImage networkImage = fakeImageWidget.image as NetworkImage;
    expect(networkImage.url, testUrl);

    expect(fakeImageWidget.width, testWidth);
    expect(fakeImageWidget.height, testHeight);
    expect(fakeImageWidget.fit, testFit);
  });
}
