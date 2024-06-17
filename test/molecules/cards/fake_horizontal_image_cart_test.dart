import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fake_store_ds/fake_store_ds.dart';
import 'package:mocktail_image_network/mocktail_image_network.dart';

void main() {
  testWidgets('FakeHorizontalImageCard renders correctly with asset image',
      (WidgetTester tester) async {
    const String testTitle = 'Test Title';
    const String testImageAsset = 'assets/images/atom.png';
    const double testImageWidth = 80.0;
    const double testImageHeight = 100.0;

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: FakeHorizontalImageCard(
            onTap: () {},
            image: testImageAsset,
            title: testTitle,
            imageWidth: testImageWidth,
            imageHeight: testImageHeight,
          ),
        ),
      ),
    );

    final cardFinder = find.byType(Card);
    expect(cardFinder, findsOneWidget);

    final titleFinder = find.text(testTitle);
    expect(titleFinder, findsOneWidget);

    final imageFinder = find.byWidgetPredicate(
      (widget) =>
          widget is FakeImageAsset &&
          widget.path == testImageAsset &&
          widget.width == testImageWidth &&
          widget.height == testImageHeight,
    );
    expect(imageFinder, findsOneWidget);

    await tester.tap(cardFinder);
    await tester.pump();
  });

  testWidgets('FakeHorizontalImageCard renders correctly with network image',
      (WidgetTester tester) async {
    const String testTitle = 'Test Title';
    const String testImageNetwork = 'https://example.com/image.png';
    const double testImageWidth = 80.0;
    const double testImageHeight = 100.0;

    await mockNetworkImages(
      () async => tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: FakeHorizontalImageCard(
              onTap: () {},
              image: testImageNetwork,
              type: FakeHorizontalImageCardType.network,
              title: testTitle,
              imageWidth: testImageWidth,
              imageHeight: testImageHeight,
            ),
          ),
        ),
      ),
    );

    final cardFinder = find.byType(Card);
    expect(cardFinder, findsOneWidget);

    final titleFinder = find.text(testTitle);
    expect(titleFinder, findsOneWidget);

    final imageFinder = find.byWidgetPredicate(
      (widget) =>
          widget is FakeImageNetwork &&
          widget.url == testImageNetwork &&
          widget.width == testImageWidth &&
          widget.height == testImageHeight,
    );
    expect(imageFinder, findsOneWidget);

    await tester.tap(cardFinder);
    await tester.pump();
  });
}
