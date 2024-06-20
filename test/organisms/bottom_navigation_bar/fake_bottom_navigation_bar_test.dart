import 'package:fake_store_ds/fake_store_ds.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('FakeBottomNavigationBar renders correctly',
      (WidgetTester tester) async {
    const destinations = [
      NavigationDestination(
        icon: Icon(Icons.home),
        label: 'Home',
      ),
      NavigationDestination(
        icon: Icon(Icons.search),
        label: 'Search',
      ),
      NavigationDestination(
        icon: Icon(Icons.settings),
        label: 'Settings',
      ),
    ];

    int selectedIndex = 1;

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          bottomNavigationBar: StatefulBuilder(
            builder: (context, setState) {
              return FakeBottomNavigationBar(
                destinations: destinations,
                onDestinationChanged: (index) {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                selectedIndex: selectedIndex,
              );
            },
          ),
        ),
      ),
    );

    expect(find.byType(NavigationBar), findsOneWidget);

    expect(
      find.byType(NavigationDestination),
      findsNWidgets(destinations.length),
    );

    await tester.tap(find.text('Settings'));

    await tester.pump();

    expect(selectedIndex, 2);
  });
}
