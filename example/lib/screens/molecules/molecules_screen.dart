import 'package:flutter/material.dart';
import 'package:example/routes/routes.dart';
import 'package:fake_store_ds/fake_store_ds.dart';

class MoleculesScreen extends StatelessWidget {
  const MoleculesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const FakeDefaultAppBar(
        title: 'Moléculas',
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: FakeSpacing.md,
          vertical: FakeSpacing.lg,
        ),
        children: [
          FakeListTile(
            onTap: () => Navigator.of(context).pushNamed(
              AppRoutes.moleculesCards,
            ),
            leadingIcon: Icons.crop_landscape_rounded,
            title: 'FakeCards',
            subtitle: 'Cards availables in Fake Store DS',
          ),
          FakeListTile(
            onTap: () => Navigator.of(context).pushNamed(
              AppRoutes.moleculesListTiles,
            ),
            leadingIcon: Icons.list,
            title: 'FakeListTiles',
            subtitle: 'List Tiles availables in Fake Store DS',
          ),
          FakeListTile(
            onTap: () => Navigator.of(context).pushNamed(
              AppRoutes.moleculesAppBars,
            ),
            leadingIcon: Icons.arrow_back,
            title: 'FakeAppBars',
            subtitle: 'App Bars availables in Fake Store DS',
          ),
          FakeListTile(
            onTap: () => Navigator.of(context).pushNamed(
              AppRoutes.moleculesModals,
            ),
            leadingIcon: Icons.check_rounded,
            title: 'FakeModals',
            subtitle: 'Modals availables in Fake Store DS',
          ),
        ],
      ),
    );
  }
}
