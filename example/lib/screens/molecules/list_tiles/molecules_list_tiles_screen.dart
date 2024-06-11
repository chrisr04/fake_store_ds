import 'package:flutter/material.dart';
import 'package:fake_store_ds/fake_store_ds.dart';

class MoleculesListTilesScreen extends StatelessWidget {
  const MoleculesListTilesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const FakeDefaultAppBar(
        title: 'FakeListTiles',
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
              child: FakeTextHeading6('List Tile'),
            ),
            FakeListTile(
              onTap: () {},
              leadingIcon: Icons.crop_landscape_rounded,
              title: 'FakeCards',
              subtitle: 'Cards availables in Fake Store DS',
            ),
          ],
        ),
      ),
    );
  }
}
