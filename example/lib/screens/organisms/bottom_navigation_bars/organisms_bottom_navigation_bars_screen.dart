import 'package:flutter/material.dart';
import 'package:fake_store_ds/fake_store_ds.dart';

class OrganismsBottomNavigationBarsScreen extends StatefulWidget {
  const OrganismsBottomNavigationBarsScreen({super.key});

  @override
  State<OrganismsBottomNavigationBarsScreen> createState() =>
      _OrganismsBottomNavigationBarsScreenState();
}

class _OrganismsBottomNavigationBarsScreenState
    extends State<OrganismsBottomNavigationBarsScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const FakeDefaultAppBar(
        title: 'FakeBottomNavigationBars',
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          horizontal: FakeSpacing.md,
          vertical: FakeSpacing.lg,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(
                vertical: FakeSpacing.md,
              ),
              child: FakeTextHeading6('Bottom Navigation Bar'),
            ),
            FakeBottomNavigationBar(
              selectedIndex: selectedIndex,
              onDestinationChanged: (index) {
                setState(() {
                  selectedIndex = index;
                });
              },
              destinations: const [
                NavigationDestination(
                  selectedIcon: FakeIcon(Icons.home),
                  icon: FakeIcon(Icons.home_outlined),
                  label: 'Home',
                ),
                NavigationDestination(
                  selectedIcon: FakeIcon(Icons.notifications_sharp),
                  icon: FakeIcon(Icons.notifications_outlined),
                  label: 'Notifications',
                ),
                NavigationDestination(
                  icon: FakeIcon(Icons.messenger_outline_sharp),
                  selectedIcon: FakeIcon(Icons.messenger_sharp),
                  label: 'Messages',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
