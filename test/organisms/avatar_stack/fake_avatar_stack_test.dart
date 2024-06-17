import 'package:fake_store_ds/fake_store_ds.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('FakeAvatarStack renders correctly with multiple avatars',
      (WidgetTester tester) async {
    const List<ImageProvider> mockImages = [
      AssetImage('assets/images/atom.png'),
      AssetImage('assets/images/atom.png'),
      AssetImage('assets/images/atom.png'),
    ];

    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: Center(
            child: FakeAvatarStack(
              images: mockImages,
              minRadius: 25.0,
              maxRadius: 30.0,
              height: 60.0,
            ),
          ),
        ),
      ),
    );

    expect(find.byType(FakeAvatarStack), findsOneWidget);
    expect(find.byType(CircleAvatar), findsNWidgets(mockImages.length));
  });
}
