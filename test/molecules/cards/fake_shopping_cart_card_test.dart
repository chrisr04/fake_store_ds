import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fake_store_ds/fake_store_ds.dart';
import 'package:mocktail_image_network/mocktail_image_network.dart';

void main() {
  group('FakeShoppingCartCard widget', () {
    const imageUrl = 'https://example.com/image.png';
    const title = 'Test Product';
    const price = 29.99;
    const deleteButtonText = 'Delete';

    testWidgets('Widget displays correctly', (WidgetTester tester) async {
      bool deleteButtonPressed = false;
      bool addButtonPressed = false;
      bool removeButtonPressed = false;
      String quantity = '';
      await mockNetworkImages(
        () async => tester.pumpWidget(
          MaterialApp(
            home: Scaffold(
              body: ListView(
                children: [
                  FakeShoppingCartCard(
                    imageUrl: imageUrl,
                    title: title,
                    price: price,
                    deleteButtonText: deleteButtonText,
                    onDeleteButtonPressed: () {
                      deleteButtonPressed = true;
                    },
                    onAddButtonPressed: () {
                      addButtonPressed = true;
                    },
                    onRemoveButtonPressed: () {
                      removeButtonPressed = true;
                    },
                    quantityValue: '1',
                    onQuantityChanged: (value) {
                      quantity = value;
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      );

      expect(find.text(title), findsOneWidget);
      expect(find.text('\$29,99'), findsOneWidget);
      expect(find.text(deleteButtonText), findsOneWidget);
      expect(find.byType(Image), findsOneWidget);
      expect(find.byType(TextField), findsOneWidget);
      expect(find.byIcon(Icons.remove), findsOneWidget);
      expect(find.byIcon(Icons.add), findsOneWidget);
      expect(find.byIcon(Icons.delete_outline_rounded), findsOneWidget);

      await tester.tap(find.byIcon(Icons.delete_outline_rounded));
      await tester.pump();

      await tester.tap(find.byIcon(Icons.remove));
      await tester.pump();

      await tester.tap(find.byIcon(Icons.add));
      await tester.pump();

      await tester.enterText(find.byType(TextField), '2');
      await tester.testTextInput.receiveAction(TextInputAction.done);
      await tester.pump();

      expect(find.text('2'), findsOneWidget);
      expect(quantity, equals('2'));
      expect(deleteButtonPressed, isTrue);
      expect(addButtonPressed, isTrue);
      expect(removeButtonPressed, isTrue);
    });

    testWidgets('Widget controls change quantity correctly',
        (WidgetTester tester) async {
      int quantity = 1;
      await mockNetworkImages(
        () async => tester.pumpWidget(
          MaterialApp(
            home: Scaffold(
              body: ListView(
                children: [
                  StatefulBuilder(builder: (context, setState) {
                    return FakeShoppingCartCard(
                      imageUrl: imageUrl,
                      title: title,
                      price: price,
                      deleteButtonText: deleteButtonText,
                      onAddButtonPressed: () {
                        setState(() {
                          quantity++;
                        });
                      },
                      onRemoveButtonPressed: () {
                        setState(() {
                          quantity--;
                        });
                      },
                      quantityValue: quantity.toString(),
                      onQuantityChanged: (value) {
                        setState(() {
                          quantity = int.tryParse(value) ?? 1;
                        });
                      },
                    );
                  }),
                ],
              ),
            ),
          ),
        ),
      );

      await tester.tap(find.byIcon(Icons.add));
      await tester.pump();
      expect(quantity, equals(2));

      await tester.tap(find.byIcon(Icons.remove));
      await tester.pump();
      expect(quantity, equals(1));

      await tester.enterText(find.byType(TextField), '5');
      await tester.testTextInput.receiveAction(TextInputAction.done);
      await tester.pump();
      expect(quantity, equals(5));
    });
  });
}
