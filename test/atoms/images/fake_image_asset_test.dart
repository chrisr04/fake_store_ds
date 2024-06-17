import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fake_store_ds/fake_store_ds.dart';

void main() {
  testWidgets('FakeImageAsset widget test', (WidgetTester tester) async {
    const imagePath = 'assets/images/atom.png';
    const imageWidth = 100.0;
    const imageHeight = 100.0;
    const imageFit = BoxFit.cover;

    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: FakeImageAsset(
            path: imagePath,
            width: imageWidth,
            height: imageHeight,
            fit: imageFit,
          ),
        ),
      ),
    );

    expect(find.byType(FakeImageAsset), findsOneWidget);

    final fakeImage = tester.widget<FakeImage>(find.byType(FakeImage));

    expect((fakeImage.image as AssetImage).assetName, imagePath);
    expect(fakeImage.width, imageWidth);
    expect(fakeImage.height, imageHeight);

    expect(fakeImage.fit, imageFit);
  });
}
