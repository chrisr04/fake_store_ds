import 'package:flutter/material.dart';
import 'package:example/routes/routes.dart';
import 'package:fake_store_ds/fake_store_ds.dart';

class OrganismsScreen extends StatelessWidget {
  const OrganismsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const FakeDefaultAppBar(
        title: 'Organismos',
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: FakeSpacing.md,
          vertical: FakeSpacing.lg,
        ),
        children: [
          FakeListTile(
            onTap: () => Navigator.of(context).pushNamed(
              AppRoutes.organismsBottomNavigationBars,
            ),
            leadingIcon: Icons.navigation_outlined,
            title: 'FakeBottomNavigationBars',
            subtitle: 'Bottom Navigation Bars availables in Fake Store DS',
          ),
        ],
      ),
    );
  }
}
