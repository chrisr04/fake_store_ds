import 'package:flutter/material.dart';
import 'package:example/routes/routes.dart';
import 'package:fake_store_ds/fake_store_ds.dart';

class AtomsScreen extends StatelessWidget {
  const AtomsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const FakeDefaultAppBar(
        title: 'Átomos',
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: FakeSpacing.md,
          vertical: FakeSpacing.lg,
        ),
        children: [
          FakeListTile(
            onTap: () => Navigator.of(context).pushNamed(AppRoutes.atomsTexts),
            leadingIcon: Icons.text_fields_rounded,
            title: 'FakeTexts',
            subtitle: 'Texts availables in Fake Store DS',
          ),
          FakeListTile(
            onTap: () => Navigator.of(context).pushNamed(
              AppRoutes.atomsSpacers,
            ),
            leadingIcon: Icons.space_bar_outlined,
            title: 'FakeSpacers',
            subtitle: 'Spacers availables in Fake Store DS',
          ),
          FakeListTile(
            onTap: () =>
                Navigator.of(context).pushNamed(AppRoutes.atomsButtons),
            leadingIcon: Icons.smart_button_rounded,
            title: 'FakeButtons',
            subtitle: 'Buttons availables in Fake Store DS',
          ),
          FakeListTile(
            onTap: () => Navigator.of(context).pushNamed(AppRoutes.atomsImages),
            leadingIcon: Icons.image_outlined,
            title: 'FakeImages',
            subtitle: 'Images availables in Fake Store DS',
          ),
          FakeListTile(
            onTap: () => Navigator.of(context).pushNamed(AppRoutes.atomsIcons),
            leadingIcon: Icons.insert_emoticon_sharp,
            title: 'FakeIcons',
            subtitle: 'Icons availables in Fake Store DS',
          ),
          FakeListTile(
            onTap: () => Navigator.of(context).pushNamed(
              AppRoutes.atomsTextFields,
            ),
            leadingIcon: Icons.keyboard_alt_outlined,
            title: 'FakeTextFields',
            subtitle: 'Text Fields availables in Fake Store DS',
          ),
        ],
      ),
    );
  }
}
