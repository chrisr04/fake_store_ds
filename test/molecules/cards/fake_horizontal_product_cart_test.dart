import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fake_store_ds/fake_store_ds.dart';
import 'package:mocktail_image_network/mocktail_image_network.dart';

void main() {
  testWidgets('FakeHorizontalProductCard renders correctly',
      (WidgetTester tester) async {
    const String imageUrl = 'https://example.com/product-image.jpg';
    const String title = 'Product Title';
    const String description = 'Product Description';
    const double price = 99.99;
    const String filledButtonText = 'Add to Cart';
    const String outlinedButtonText = 'Details';
    bool fillButtonPressed = false;
    bool outlinedButtonPressed = false;
    bool cartTapped = false;

    await mockNetworkImages(
      () async => tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: FakeHorizontalProductCard(
              imageUrl: imageUrl,
              title: title,
              description: description,
              price: price,
              filledButtonText: filledButtonText,
              outlinedButtonText: outlinedButtonText,
              onTap: () {
                cartTapped = true;
              },
              onFilledButtonPressed: () {
                fillButtonPressed = true;
              },
              onOutlinedButtonPressed: () {
                outlinedButtonPressed = true;
              },
            ),
          ),
        ),
      ),
    );

    expect(find.text(title), findsOneWidget);
    expect(find.text(description), findsOneWidget);
    expect(find.text('\$99,99'), findsOneWidget);

    final filledButtonFinder = find.text(filledButtonText);

    expect(filledButtonFinder, findsOneWidget);
    await tester.tap(filledButtonFinder);
    await tester.pump();
    expect(fillButtonPressed, isTrue);

    final outlinedButtonFinder = find.text(outlinedButtonText);
    expect(outlinedButtonFinder, findsOneWidget);
    await tester.tap(outlinedButtonFinder);
    await tester.pump();
    expect(outlinedButtonPressed, isTrue);

    await tester.tap(find.byType(Card));
    await tester.pump();
    expect(cartTapped, isTrue);
  });
}
