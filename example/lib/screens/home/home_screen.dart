import 'package:example/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:fake_store_ds/fake_store_ds.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeColors = Theme.of(context).colorScheme;
    return Scaffold(
      body: Column(
        children: [
          FakeTopStickyCard(
            child: Column(
              children: [
                const FakeImageAsset(
                  path: 'assets/images/science.png',
                  width: 100.0,
                ),
                FakeTextHeading5(
                  'Fake Store Design System',
                  color: themeColors.onSurfaceVariant,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(
                horizontal: FakeSpacing.md,
                vertical: FakeSpacing.xl,
              ),
              child: Column(
                children: [
                  FakeHorizontalImageCard(
                    onTap: () => Navigator.of(context).pushNamed(
                      AppRoutes.atoms,
                    ),
                    image: 'assets/images/atom.png',
                    title: 'Átomos',
                    imageHeight: 60.0,
                    titleWeight: FontWeight.w700,
                  ),
                  const FakeSpacerS(),
                  FakeHorizontalImageCard(
                    onTap: () => Navigator.of(context).pushNamed(
                      AppRoutes.molecules,
                    ),
                    image: 'assets/images/molecule.png',
                    title: 'Moléculas',
                    imageHeight: 60.0,
                    titleWeight: FontWeight.w700,
                  ),
                  const FakeSpacerS(),
                  FakeHorizontalImageCard(
                    onTap: () => Navigator.of(context).pushNamed(
                      AppRoutes.organisms,
                    ),
                    image: 'assets/images/organism.png',
                    title: 'Organismos',
                    imageHeight: 60.0,
                    titleWeight: FontWeight.w700,
                  ),
                  const FakeSpacerS(),
                  FakeHorizontalImageCard(
                    onTap: () => Navigator.of(context).pushNamed(
                      AppRoutes.templates,
                    ),
                    image: 'assets/images/template.png',
                    title: 'Plantillas',
                    imageHeight: 60.0,
                    titleWeight: FontWeight.w700,
                  ),
                  const FakeSpacerS(),
                  FakeHorizontalImageCard(
                    onTap: () => Navigator.of(context).pushNamed(
                      AppRoutes.pages,
                    ),
                    image: 'assets/images/page.png',
                    title: 'Páginas',
                    imageHeight: 60.0,
                    titleWeight: FontWeight.w700,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
