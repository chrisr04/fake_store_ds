import 'package:flutter/material.dart';
import 'package:example/routes/routes.dart';
import 'package:fake_store_ds/fake_store_ds.dart';

class PagesScreen extends StatelessWidget {
  const PagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const FakeDefaultAppBar(
        title: 'Páginas',
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: FakeSpacing.md,
          vertical: FakeSpacing.lg,
        ),
        children: [
          FakeListTile(
            onTap: () => Navigator.of(context).pushNamed(
              AppRoutes.pagesError,
            ),
            leadingIcon: Icons.error_outline,
            title: 'FakeErrorPage',
            subtitle: 'Error Page available in Fake Store DS',
          ),
        ],
      ),
    );
  }
}
